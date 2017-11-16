/++
Initialization, termination, and registration of D libraries in Godot
+/
module godot.d.register;

import std.format;
import std.meta, std.traits;
import std.experimental.allocator, std.experimental.allocator.mallocator;
import core.stdc.stdlib : malloc, free;

import godot.d.meta;
import godot.d.script;
import godot.d.wrap;
import godot.d.udas;

import godot.core, godot.c;

static import godot.gdnativelibrary;

/++
Pass this enum to GodotNativeInit and GodotNativeTerminate to skip D runtime
initialization/termination.
+/
enum NoDRuntime;

/++
This mixin will generate the GDNative initialization function for this D library.

The symbolPrefix must match the GDNativeLibrary's symbolPrefix in Godot.

It will first initialize the D runtime, unless you pass $(D NoDRuntime) to it.

The following template arguments will be processed in the order they're passed:
 - Classes will be registered into Godot.
 - Functions will be called. Optionally can take a $(D godot_native_init_options*)
argument (from the $(D godot.c) module).
+/
mixin template GodotNativeInit(string symbolPrefix, Args...)
{
	private static import godot.c;
	private static import godot.gdnativelibrary;
	
	private __gshared godot.gdnativelibrary.GDNativeLibrary _GODOT_library;
	private __gshared void* _GODOT_library_handle;
	
	pragma(mangle, symbolPrefix~"gdnative_init")
	export extern(C) static void godot_gdnative_init(godot.c.godot_gdnative_init_options* options)
	{
		import godot.c.api;
		import std.meta, std.traits;
		import core.runtime : Runtime;
		static if(staticIndexOf!(NoDRuntime, Args) == -1) Runtime.initialize();
		
		godot_gdnative_api_struct_init(options.api_struct);
		
		import core.exception : assertHandler;
		assertHandler = (options.in_editor) ? (&godotAssertHandlerEditorDebug)
			: (&godotAssertHandlerCrash);
		
		_GODOT_library = cast(godot.gdnativelibrary.GDNativeLibrary)
			options.gd_native_library;
		
		foreach(Arg; Args)
		{
			static if(is(Arg)) // is type
			{
				
			}
			else static if( isCallable!Arg )
			{
				static if( is(typeof(Arg())) ) Arg();
				else static if( is(typeof(Arg(options))) ) Arg(options);
			}
			else static if(Arg == NoDRuntime) { }
			else
			{
				static assert(0, "Unrecognized argument <"~Arg.stringof~"> passed to GodotNativeInit");
			}
		}
	}
	pragma(mangle, symbolPrefix~"nativescript_init")
	export extern(C) static void godot_nativescript_init(void* handle)
	{
		import std.meta, std.traits;
		import godot.d.register : register;
		
		_GODOT_library_handle = handle;
		
		foreach(Arg; Args)
		{
			static if(is(Arg)) // is type
			{
				static assert(is(Arg == class) && extendsGodotBaseClass!Arg,
					Arg.stringof ~ " is not a D class that extends a Godot class!");
				register!Arg(_GODOT_library_handle, _GODOT_library);
			}
			else static if( isCallable!Arg )
			{
				
			}
			else static if(Arg == NoDRuntime) { }
			else
			{
				static assert(0, "Unrecognized argument <"~Arg.stringof~"> passed to GodotNativeInit");
			}
		}
	}
}

/++
This mixin will generate the GDNative termination function for this D library.

The symbolPrefix must match the GDNativeLibrary's symbolPrefix in Godot.

The following template arguments will be processed in the order they're passed:
 - Functions will be called. Optionally can take a $(D godot_native_terminate_options*)
argument (from the $(D godot.c) module).

(It's not necessary to un-register classes from Godot.)

It will also terminate the D runtime, unless you pass $(D NoDRuntime) to it.
+/
mixin template GodotNativeTerminate(string symbolPrefix, Args...)
{
	private static import godot.c;
	
	pragma(mangle, symbolPrefix~"gdnative_terminate")
	export extern(C) static void godot_gdnative_terminate(godot.c.godot_gdnative_terminate_options* options)
	{
		import std.meta, std.traits;
		foreach(Arg; Args)
		{
			static if(is(Arg)) static assert(0, "Can't pass a type <"~Arg.stringof~"> to GodotNativeTerminate");
			else static if( isCallable!Arg && is(typeof(Arg())) )
			{
				Arg();
			}
			else static if( isCallable!Arg && is(typeof(Arg(options))) )
			{
				Arg(options);
			}
			else static if(Arg == NoDRuntime) { }
			else
			{
				static assert(0, "Unrecognized argument <"~Arg.stringof~"> passed to GodotNativeInit");
			}
		}
		
		import core.runtime : Runtime;
		static if(staticIndexOf!(NoDRuntime, Args) == -1) Runtime.terminate();
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
void register(T)(void* handle, godot.gdnativelibrary.GDNativeLibrary lib) if(is(T == class))
{
	import godot.c;
	import godot.object, godot.resource;
	import godot.d;
	static import godot.nativescript;
	import std.string : toStringz, fromStringz; /// TODO: remove GCed functions

	static if(extendsGodotBaseClass!T) alias Base = typeof(T.owner);
	else alias Base = GodotObject; // Default base class - GDScript uses Reference
	
	static if(hasUDA!(T, Rename)) enum immutable(char*) name = TemplateArgsOf!(
		getUDAs!(T, Rename)[0])[0];
	else enum immutable(char*) name = T.stringof;
	enum immutable(char*) baseName = Base._GODOT_internal_name;
	
	godot.d.script.NativeScriptTemplate!T = memnew!(godot.nativescript.NativeScript);
	godot.d.script.NativeScriptTemplate!T.set("library", Variant(lib));
	godot.d.script.NativeScriptTemplate!T.set("class_name", Variant(name));
	
	auto icf = godot_instance_create_func(&createFunc!T, null, null);
	auto idf = godot_instance_destroy_func(&destroyFunc!T, null, null);
	_godot_nativescript_api.godot_nativescript_register_class(handle, name, baseName, icf, idf);
	
	// register a no-op function that indicates this is a D class
	{
		godot_instance_method md;
		md.method = &_GODOT_nop;
		md.free_func = null;
		
		_godot_nativescript_api.godot_nativescript_register_method(handle, name, "_GDNATIVE_D_typeid", godot_method_attributes.init, md);
	}
	
	foreach(mf; godotMethods!T)
	{
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
		
		_godot_nativescript_api.godot_nativescript_register_method(handle, name, godotName!mf.toStringz, ma, md); /// TODO: remove GCed functions
	}
	
	// OnReady when there is no _ready method
	static if(staticIndexOf!("_ready", Filter!(godotName, godotMethods!T)) == -1
		&& onReadyFieldNames!T.length)
	{
		enum ma = godot_method_attributes.init;
		godot_instance_method md;
		md.method = &OnReadyWrapper!T.callOnReady;
		_godot_nativescript_api.godot_nativescript_register_method(handle, name, "_ready", ma, md);
	}
	
	enum bool matchName(string p, alias a) = (godotName!a == p);
	foreach(pName; godotPropertyNames!T)
	{
		alias getterMatches = Filter!(ApplyLeft!(matchName, pName), godotPropertyGetters!T);
		static assert(getterMatches.length <= 1); /// TODO: error message
		alias setterMatches = Filter!(ApplyLeft!(matchName, pName), godotPropertySetters!T);
		static assert(setterMatches.length <= 1);
		
		godot_property_set_func sf;
		godot_property_get_func gf;
		godot_property_attributes attr;
		
		static if(getterMatches.length) alias P = ReturnType!(getterMatches[0]);
		else alias P = Parameters!(setterMatches[0])[0];
		enum Variant.Type vt = extractPropertyVariantType!(getterMatches, setterMatches);
		attr.type = cast(godot_int)vt;
		
		enum Property uda = extractPropertyUDA!(getterMatches, setterMatches);
		attr.rset_type = cast(godot_method_rpc_mode)uda.rpcMode;
		attr.hint = cast(godot_property_hint)uda.hint;

		static if(vt == Variant.Type.object && is(GodotClass!P : Resource))
		{
			attr.hint |= godot_property_hint.GODOT_PROPERTY_HINT_RESOURCE_TYPE;
		}

		static if(uda.hintString.length) _godot_api.godot_string_new_data(&attr.hint_string,
			uda.hintString.ptr, cast(int)uda.hintString.length);
		else
		{
			static if(vt == Variant.Type.object)
			{
				_godot_api.godot_string_new_data(&attr.hint_string, GodotClass!P._GODOT_internal_name.ptr,
					cast(int)GodotClass!P._GODOT_internal_name.length);
			}
			else _godot_api.godot_string_new(&attr.hint_string);
		}
		attr.usage = cast(godot_property_usage_flags)uda.usage;
		
		/// TODO: default value how?
		{
			_godot_api.godot_variant_new_nil(&attr.default_value);
		}
		
		
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
		
		_godot_nativescript_api.godot_nativescript_register_property(handle, name, pName.toStringz, &attr, sf, gf); /// TODO: remove GCed functions
	}
	foreach(pName; godotPropertyVariableNames!T)
	{
		alias renames = getUDAs!(mixin("T."~pName), Rename);
		static if(renames.length && !is(renames[0])) immutable(char*) propName = renames[0].name.toStringz; /// TODO: remove GCed functions
		else immutable(char*) propName = pName.toStringz;
		
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

		static if(uda.hintString.length) _godot_api.godot_string_new_data(&attr.hint_string,
			uda.hintString.ptr, cast(int)uda.hintString.length);
		else
		{
			static if(vt == Variant.Type.object)
			{
				_godot_api.godot_string_new_data(&attr.hint_string, GodotClass!P._GODOT_internal_name.ptr,
					cast(int)GodotClass!P._GODOT_internal_name.length);
			}
			else _godot_api.godot_string_new(&attr.hint_string);
		}
		attr.usage = cast(godot_property_usage_flags)uda.usage |
			cast(godot_property_usage_flags)Property.Usage.scriptVariable;
		
		static if( is(typeof( { P p; } )) )
		{
			import std.math : isNaN;
			static if(isFloatingPoint!P && (mixin("T."~pName).init).isNaN)
			{
				// Godot doesn't support NaNs. Initialize properties to 0.0 instead.
				Variant defval = P(0.0);
			}
			else Variant defval = (mixin("T."~pName)).init;
		}
		else
		{
			/// FIXME: call default constructor function
			pragma(msg, "Type "~P.stringof~" can't do init");
			Variant defval = null;
		}
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
		
		_godot_nativescript_api.godot_nativescript_register_property(handle, name, propName, &attr, sf, gf);
	}
	// TODO: signals
}

