/++
Initialization, termination, and registration of D libraries in Godot
+/
module godot.d.register;

import godotutil.classes;

import std.format;
import std.meta, std.traits;
import std.experimental.allocator, std.experimental.allocator.mallocator;
import core.stdc.stdlib : malloc, free;

import godot.d.traits;
import godot.d.script;
import godot.d.wrap;
import godot.d.udas;
import godot.d.reference;

import godot.core, godot.c;

import godot.gdnativelibrary;

enum bool is_(alias a) = is(a);
template fileClassesAsLazyImports(FileInfo f)
{
	template classFrom(string className)
	{
		mixin("alias classFrom = from!\""~f.moduleName~"\""~className[f.moduleName.length..$]~";");
	}
	alias fileClassesAsLazyImports = staticMap!(classFrom, aliasSeqOf!(f.classes));
}

alias GodotInitOptions = const(godot_gdnative_init_options*);
alias GodotTerminateOptions = const(godot_gdnative_terminate_options*);

/++
Pass to GodotNativeLibrary to control D runtime initialization/termination.
Default is `yes` unless compiling with BetterC.
+/
enum LoadDRuntime : bool
{
	no = false,
	yes = true
}

bool is_runtime_loaded = false;

/++
This mixin will generate the GDNative C interface functions for this D library.
Pass to it a name string for the library, followed by the GodotScript types to
register, functions to call, and other options to configure Godot-D.

The symbolPrefix must match the GDNativeLibrary's symbolPrefix in Godot.

D runtime will be initialized and terminated, unless you pass $(D LoadDRuntime.no)
or compile with BetterC.

Functions taking GodotInitOptions or no arguments will be called at init.
Functions taking GodotTerminateOptions will be called at termination.

Example:
---
import godot, godot.node;
class TestClass : GodotScript!Node
{ }
mixin GodotNativeLibrary!(
	"testlib",
	TestClass,
	(GodotInitOptions o){ print("Initialized"); },
	(GodotTerminateOptions o){ print("Terminated"); }
);
---
+/
mixin template GodotNativeLibrary(string symbolPrefix, Args...)
{
	private static import godot.c;
	private static import godot.gdnativelibrary;
	private static import godotutil.classes;
	private import godot.d.reference;
	
	private __gshared Ref!(godot.gdnativelibrary.GDNativeLibrary) _GODOT_library;
	private __gshared void* _GODOT_library_handle;

	static if(__traits(compiles, import("classes.csv")))
	{
		enum godotutil.classes.ProjectInfo _GODOT_projectInfo = godotutil.classes.ProjectInfo.fromCsv(import("classes.csv"));
	}
	else
	{
		enum godotutil.classes.ProjectInfo _GODOT_projectInfo = godotutil.classes.ProjectInfo.init;
	}

	/// HACK: empty main to force the compiler to add emulated TLS.
	version(Android) void main() { }

	// Windows DLL entry points handle TLS+DRuntime initialization and thread attachment
	version(Windows)
	{
		version(D_BetterC) {}
		else
		{
			import core.sys.windows.dll : SimpleDllMain;
			mixin SimpleDllMain;
		}
	}
	
	pragma(mangle, symbolPrefix~"gdnative_init")
	export extern(C) static void godot_gdnative_init(godot.c.godot_gdnative_init_options* options)
	{
		import godot.c.api;
		import godot.d.reference;
		import std.meta, std.traits;
		import core.runtime : Runtime;
		import godot.d.output;
		import godot.d.traits;
		version(Windows) {}
		else
		{
			version(D_BetterC) enum bool loadDRuntime = staticIndexOf!(LoadDRuntime.yes, Args) != -1;
			else enum bool loadDRuntime = staticIndexOf!(LoadDRuntime.no, Args) == -1;
			static if (loadDRuntime) {
				// Unload the D runtime if it is already loaded
				if (is_runtime_loaded) {
					Runtime.terminate();
					is_runtime_loaded = false;
				}

				Runtime.initialize();
				is_runtime_loaded = true;
			}
		}
		
		godot_gdnative_api_struct_init(options.api_struct);
		
		import core.exception : assertHandler;
		assertHandler = (options.in_editor) ? (&godotAssertHandlerEditorDebug)
			: (&godotAssertHandlerCrash);
		
		*cast(typeof(options.gd_native_library)*)&_GODOT_library = options.gd_native_library;
		_GODOT_library.reference();

		foreach(Arg; Args)
		{
			static if(is(Arg)) { } // is type
			else static if( isCallable!Arg )
			{
				static if( is(typeof(Arg())) ) Arg();
				else static if( is(typeof(Arg(options))) ) Arg(options);
			}
			else static if(is(typeof(Arg) == LoadDRuntime)) { }
			else
			{
				static assert(0, "Unrecognized argument <"~Arg.stringof~"> passed to GodotNativeLibrary");
			}
		}
	}
	pragma(mangle, symbolPrefix~"nativescript_init")
	export extern(C) static void godot_nativescript_init(void* handle)
	{
		import std.meta, std.traits;
		import godot.d.register : register;
		import std.array : join;
		import godot.d.output;
		import godot.d.traits;
		
		_GODOT_library_handle = handle;
		
		alias classList = staticMap!(fileClassesAsLazyImports, aliasSeqOf!(_GODOT_projectInfo.files));
		static foreach(C; NoDuplicates!(classList, Filter!(is_, Args)))
		{
			static if(is(C))
			{
				static if(extendsGodotBaseClass!C)
				{
					register!C(_GODOT_library_handle, _GODOT_library);
				}
			}
		}
		
		foreach(Arg; Args)
		{
			static if(is(Arg)) // is type
			{
				static assert(is(Arg == class) && extendsGodotBaseClass!Arg,
					fullyQualifiedName!Arg ~ " is not a D class that extends a Godot class!");
			}
			else static if( isCallable!Arg )
			{
				
			}
			else static if(is(typeof(Arg) == LoadDRuntime)) { }
			else
			{
				static assert(0, "Unrecognized argument <"~Arg.stringof~"> passed to GodotNativeLibrary");
			}
		}
	}
	pragma(mangle, symbolPrefix~"gdnative_terminate")
	export extern(C) static void godot_gdnative_terminate(godot.c.godot_gdnative_terminate_options* options)
	{
		import std.meta, std.traits;
		import godot.d.script : NativeScriptTemplate;
		import std.array : join;
		import godot.d.output;
		import godot.d.traits;
		import godot.os;
		import core.runtime : Runtime;

		alias classList = staticMap!(fileClassesAsLazyImports, aliasSeqOf!(_GODOT_projectInfo.files));
		static foreach(C; NoDuplicates!(classList, Filter!(is_, Args)))
		{
			static if(is(C))
			{
				static if(extendsGodotBaseClass!C)
				{
					NativeScriptTemplate!C.unref();
				}
			}
		}
		
		foreach(Arg; Args)
		{
			static if(is(Arg)) // is type
			{
			}
			else static if(isCallable!Arg)
			{
				static if(is(typeof(Arg(options)))) Arg(options);
			}
			else static if(is(typeof(Arg) == LoadDRuntime)) { }
			else
			{
				static assert(0, "Unrecognized argument <"~Arg.stringof~"> passed to GodotNativeLibrary");
			}
		}
		
		_GODOT_library.unref();
		
		version(Windows) {}
		else
		{
			version(D_BetterC) enum bool loadDRuntime = staticIndexOf!(LoadDRuntime.yes, Args) != -1;
			else enum bool loadDRuntime = staticIndexOf!(LoadDRuntime.no, Args) == -1;
			static if (loadDRuntime) {
				// Only unload the D runtime if we are not running in the editor
				if (OS.hasFeature(gs!"standalone") && is_runtime_loaded) {
					Runtime.terminate();
					is_runtime_loaded = false;
				}
			}
		}
	}
}

private extern(C)
godot_variant _GODOT_nop(godot_object o, void* methodData,
	void* userData, int numArgs, godot_variant** args)
{
	godot_variant n;
	_godot_api.godot_variant_new_nil(&n);
	return n;
}

/++
Register a class and all its $(D @GodotMethod) member functions into Godot.
+/
void register(T)(void* handle, GDNativeLibrary lib) if(is(T == class))
{
	import godot.c;
	import godot.object, godot.resource;
	import godot.d;
	static import godot.nativescript;

	static if(BaseClassesTuple!T.length == 2) // base class is GodotScript; use owner
	{
		alias Base = typeof(T.owner);
		alias baseName = Base._GODOT_internal_name;
	}
	else // base class is another D script
	{
		alias Base = BaseClassesTuple!T[0];
		static if(hasUDA!(Base, Rename)) enum immutable(char*) baseName = godotName!Base;
		else enum immutable(char*) baseName = fullyQualifiedName!Base;
	}
	
	static if(hasUDA!(T, Rename)) enum immutable(char*) name = godotName!T;
	else enum immutable(char*) name = fullyQualifiedName!T;
	
	auto icf = godot_instance_create_func(&createFunc!T, null, null);
	auto idf = godot_instance_destroy_func(&destroyFunc!T, null, null);
	
	static if(hasUDA!(T, Tool)) _godot_nativescript_api.godot_nativescript_register_tool_class(handle, name, baseName, icf, idf);
	else _godot_nativescript_api.godot_nativescript_register_class(handle, name, baseName, icf, idf);
	
	if(GDNativeVersion.hasNativescript!(1, 1))
	{
		_godot_nativescript_api.godot_nativescript_set_type_tag(handle, name, NativeScriptTag!T.tag);
	}
	else // register a no-op function that indicates this is a D class
	{
		godot_instance_method md;
		md.method = &_GODOT_nop;
		md.free_func = null;
		_godot_nativescript_api.godot_nativescript_register_method(handle, name, "_GDNATIVE_D_typeid", godot_method_attributes.init, md);
	}
	
	static foreach(mf; godotMethods!T)
	{{
		godot_method_attributes ma;
		static if(is( getUDAs!(mf, Method)[0] )) ma.rpc_type = godot_method_rpc_mode
			.GODOT_METHOD_RPC_MODE_DISABLED;
		else
		{
			ma.rpc_type = cast(godot_method_rpc_mode)(getUDAs!(mf, Method)[0].rpcMode);
		}
		
		godot_instance_method md;
		static if(godotName!mf == "_ready" && onReadyFieldNames!T.length)
		{
			md.method = &OnReadyWrapper!T.callOnReady;
		}
		else md.method = &MethodWrapper!(T, mf).callMethod;
		md.free_func = null;
		
		char[godotName!mf.length+1] mfn = void;
		mfn[0..godotName!mf.length] = godotName!mf[];
		mfn[$-1] = '\0';
		_godot_nativescript_api.godot_nativescript_register_method(handle, name, mfn.ptr, ma, md);
	}}
	
	// OnReady when there is no _ready method
	static if(staticIndexOf!("_ready", staticMap!(godotName, godotMethods!T)) == -1
		&& onReadyFieldNames!T.length)
	{
		enum ma = godot_method_attributes.init;
		godot_instance_method md;
		md.method = &OnReadyWrapper!T.callOnReady;
		_godot_nativescript_api.godot_nativescript_register_method(handle, name, "_ready", ma, md);
	}
	
	static foreach(sName; godotSignals!T)
	{{
		alias s = Alias!(mixin("T."~sName));
		static assert(hasStaticMember!(T, sName), "Signal declaration "~fullyQualifiedName!s
			~" must be static. Otherwise it would take up memory in every instance of "~T.stringof);
		
		godot_signal gs;
		(*cast(String*)&gs.name) = String(godotName!s);
		gs.num_args = Parameters!s.length;
		
		static if(Parameters!s.length)
		{
			godot_signal_argument[Parameters!s.length] args;
			gs.args = args.ptr;
		}
		
		foreach(pi, P; Parameters!s)
		{
			static assert(Variant.compatible!P, fullyQualifiedName!s~" parameter "~pi.text~" \""
				~ParameterIdentifierTuple!s[pi]~"\": type "~P.stringof~" is incompatible with Godot");
			static if(ParameterIdentifierTuple!s[pi].length > 0)
			{
				(*cast(String*)&args[pi].name) = String(ParameterIdentifierTuple!s[pi]);
			}
			else
			{
				(*cast(String*)&args[pi].name) = (String(P.stringof) ~ String("Arg") ~ Variant(pi).as!String);
			}
			args[pi].type = Variant.variantTypeOf!P;
			args[pi].usage = cast(godot_property_usage_flags)Property.Usage.defaultUsage;
		}
		
		_godot_nativescript_api.godot_nativescript_register_signal(handle, name, &gs);
	}}
	
	enum bool matchName(string p, alias a) = (godotName!a == p);
	static foreach(pName; godotPropertyNames!T)
	{{
		alias getterMatches = Filter!(ApplyLeft!(matchName, pName), godotPropertyGetters!T);
		static assert(getterMatches.length <= 1); /// TODO: error message
		alias setterMatches = Filter!(ApplyLeft!(matchName, pName), godotPropertySetters!T);
		static assert(setterMatches.length <= 1);
		
		godot_property_set_func sf;
		godot_property_get_func gf;
		godot_property_attributes attr;
		
		static if(getterMatches.length) alias P = NonRef!(ReturnType!(getterMatches[0]));
		else alias P = Parameters!(setterMatches[0])[0];
		static assert(!is(P : Ref!U, U)); /// TODO: proper Ref handling
		enum Variant.Type vt = extractPropertyVariantType!(getterMatches, setterMatches);
		attr.type = cast(godot_int)vt;
		
		enum Property uda = extractPropertyUDA!(getterMatches, setterMatches);
		attr.rset_type = cast(godot_method_rpc_mode)uda.rpcMode;
		attr.hint = cast(godot_property_hint)uda.hint;

		static if(vt == Variant.Type.object && extends!(P, Resource))
		{
			attr.hint |= godot_property_hint.GODOT_PROPERTY_HINT_RESOURCE_TYPE;
		}

		static if(uda.hintString.length) _godot_api.godot_string_parse_utf8(
			&attr.hint_string, uda.hintString.ptr);
		else
		{
			static if(vt == Variant.Type.object)
			{
				_godot_api.godot_string_parse_utf8(&attr.hint_string,
					GodotClass!P._GODOT_internal_name);
			}
			else _godot_api.godot_string_new(&attr.hint_string);
		}
		attr.usage = cast(godot_property_usage_flags)(uda.usage |
			Property.Usage.scriptVariable);
		
		Variant defval;
		static if(getterMatches.length) enum gDef = hasUDA!(getterMatches[0], DefaultValue);
		else enum gDef = false;
		static if(setterMatches.length) enum sDef = hasUDA!(setterMatches[0], DefaultValue);
		else enum sDef = false;

		static if(gDef || sDef)
		{
			static if(gDef) alias defExprSeq = TemplateArgsOf!(getUDAs!(getterMatches[0], DefaultValue)[0]);
			else alias defExprSeq = TemplateArgsOf!(getUDAs!(setterMatches[0], DefaultValue)[0]);
			defval = defExprSeq[0];
		}
		else static if( is(typeof( { P p; } )) ) // use type's default value
		{
			static if(isFloatingPoint!P)
			{
				// Godot doesn't support NaNs. Initialize properties to 0.0 instead.
				defval = 0.0;
			}
			else defval = P.init;
		}
		else
		{
			/// FIXME: call default constructor function
			defval = null;
		}
		attr.default_value = defval._godot_variant;
		
		static if(getterMatches.length)
		{
			alias GetWrapper = MethodWrapper!(T, getterMatches[0]);
			gf.get_func = &GetWrapper.callPropertyGet;
			gf.free_func = null;
		}
		else
		{
			gf.get_func = &emptyGetter;
		}
		
		static if(setterMatches.length)
		{
			alias SetWrapper = MethodWrapper!(T, setterMatches[0]);
			sf.set_func = &SetWrapper.callPropertySet;
			sf.free_func = null;
		}
		else
		{
			sf.set_func = &emptySetter;
		}
		
		char[pName.length+1] pn = void;
		pn[0..pName.length] = pName[];
		pn[$-1] = '\0';
		_godot_nativescript_api.godot_nativescript_register_property(handle, name, pn.ptr, &attr, sf, gf);
	}}
	static foreach(pName; godotPropertyVariableNames!T)
	{{
		import std.string;
		
		godot_property_set_func sf;
		godot_property_get_func gf;
		godot_property_attributes attr;
		
		alias P = typeof(mixin("T."~pName));
		enum Variant.Type vt = Variant.variantTypeOf!P;
		attr.type = cast(godot_int)vt;
		
		alias udas = getUDAs!(mixin("T."~pName), Property);
		enum Property uda = is(udas[0]) ? Property.init : udas[0];
		attr.rset_type = cast(godot_method_rpc_mode)uda.rpcMode;
		attr.hint = cast(godot_property_hint)uda.hint;

		static if(vt == Variant.Type.object && is(GodotClass!P : Resource))
		{
			attr.hint |= godot_property_hint.GODOT_PROPERTY_HINT_RESOURCE_TYPE;
		}

		static if(uda.hintString.length) _godot_api.godot_string_parse_utf8(
			&attr.hint_string, uda.hintString.ptr);
		else
		{
			static if(vt == Variant.Type.object)
			{
				_godot_api.godot_string_parse_utf8(&attr.hint_string,
					GodotClass!P._GODOT_internal_name);
			}
			else _godot_api.godot_string_new(&attr.hint_string);
		}
		attr.usage = cast(godot_property_usage_flags)uda.usage |
			cast(godot_property_usage_flags)Property.Usage.scriptVariable;
		
		Variant defval = getDefaultValueFromAlias!(T, pName)();
		attr.default_value = defval._godot_variant;
		
		alias Wrapper = VariableWrapper!(T, pName);
		
		{
			gf.method_data = null;
			gf.get_func = &Wrapper.callPropertyGet;
			gf.free_func = null;
		}
		
		{
			sf.method_data = null;
			sf.set_func = &Wrapper.callPropertySet;
			sf.free_func = null;
		}
		
		enum pnLength = godotName!(mixin("T."~pName)).length;
		char[pnLength+1] pn = void;
		pn[0..pnLength] = godotName!(mixin("T."~pName))[];
		pn[$-1] = '\0';
		_godot_nativescript_api.godot_nativescript_register_property(handle, name, pn.ptr, &attr, sf, gf);
	}}
	
	
	
	godot.d.script.NativeScriptTemplate!T = memnew!(godot.nativescript.NativeScript);
	godot.d.script.NativeScriptTemplate!T.setLibrary(lib);
	godot.d.script.NativeScriptTemplate!T.setClassName(String(name));
}

