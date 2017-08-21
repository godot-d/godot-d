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

/++
Pass this enum to GodotNativeInit and GodotNativeTerminate to skip D runtime
initialization/termination.
+/
enum NoDRuntime;

/++
This mixin will generate the GDNative initialization function for this D library.

It will first initialize the D runtime, unless you pass $(D NoDRuntime) to it.

The following template arguments will be processed in the order they're passed:
 - Classes will be registered into Godot.
 - Functions will be called. Optionally can take a $(D godot_native_init_options*)
argument (from the $(D godot.c) module).
+/
mixin template GodotNativeInit(Args...)
{
	private static import godot.c;
	
	private __gshared void* _GODOT_library_handle;
	
	/// BUG: extern(C) ignored inside mixin template for removing D name mangling.
	/// https://issues.dlang.org/show_bug.cgi?id=12575
	/// workaround: manually specify unmangled name.
	pragma(mangle, "godot_gdnative_init")
	export extern(C) static void godot_gdnative_init(godot.c.godot_gdnative_init_options* options)
	{
		import std.meta, std.traits;
		import core.runtime : Runtime;
		static if(staticIndexOf!(NoDRuntime, Args) == -1) Runtime.initialize();
		
		import core.exception : assertHandler;
		assertHandler = (options.in_editor) ? (&godotAssertHandlerEditorDebug)
			: (&godotAssertHandlerCrash);
		
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
	pragma(mangle, "godot_nativescript_init")
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
				register!Arg(_GODOT_library_handle);
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

The following template arguments will be processed in the order they're passed:
 - Functions will be called. Optionally can take a $(D godot_native_terminate_options*)
argument (from the $(D godot.c) module).

(It's not necessary to un-register classes from Godot.)

It will also terminate the D runtime, unless you pass $(D NoDRuntime) to it.
+/
mixin template GodotNativeTerminate(Args...)
{
	private static import godot.c;
	/// BUG: extern(C) ignored inside mixin template for removing D name mangling.
	/// https://issues.dlang.org/show_bug.cgi?id=12575
	/// workaround: manually specify unmangled name.
	pragma(mangle, "godot_gdnative_terminate")
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

private void nop() { }

/++
Register a class and all its $(D @GodotMethod) member functions into Godot.
+/
void register(T)(void* handle) if(is(T == class))
{
	import godot.c;
	import godot.object, godot.resource;
	import godot.d;

	static if(extendsGodotBaseClass!T) alias Base = typeof(T.owner);
	else alias Base = GodotObject; // Default base class - GDScript uses Reference
	
	enum immutable(char*) name = T.stringof; // TODO: add rename UDA
	enum immutable(char*) baseName = Base._GODOT_internal_name;
	
	auto icf = godot_instance_create_func(&createFunc!T, null, null);
	auto idf = godot_instance_destroy_func(&destroyFunc!T, null, null);
	godot_nativescript_register_class(handle, name, baseName, icf, idf);
	
	// register a no-op function that indicates this is a D class
	{
		alias Wrapper = MethodWrapper!(T, void);
		auto wrapped = &nop;
		
		godot_instance_method md;
		md.method_data = Wrapper.make(wrapped);
		md.method = &Wrapper.callMethod;
		md.free_func = &free;
		
		godot_nativescript_register_method(handle, name, "_GDNATIVE_D_typeid", godot_method_attributes.init, md);
	}
	
	foreach(mf; godotMethods!T)
	{
		enum string dName = __traits(identifier, mf);
		enum immutable(char*) funcName = godotName!mf;
		alias udas = getUDAs!(mf, Method);
		
		auto wrapped = &mf; // a *function* pointer (not delegate) to mf
		
		alias Ret = ReturnType!wrapped;
		alias Args = Parameters!wrapped;
		alias Wrapper = MethodWrapper!(T, Ret, Args);
		
		godot_method_attributes ma;
		static if(is( udas[0] )) ma.rpc_type = godot_method_rpc_mode
			.GODOT_METHOD_RPC_MODE_DISABLED;
		else
		{
			ma.rpc_type = cast(godot_method_rpc_mode)udas[0].rpcMode;
		}
		
		godot_instance_method md;
		md.method_data = Wrapper.make(wrapped);
		md.method = &Wrapper.callMethod;
		md.free_func = &free;
		
		godot_nativescript_register_method(handle, name, funcName, ma, md);
	}
	
	enum bool matchName(string p, alias a) = (godotName!a == p);
	foreach(pName; godotPropertyNames!T)
	{
		enum immutable(char*) propName = pName;
		
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

		static if(uda.hintString.length) godot_string_new_data(&attr.hint_string,
			uda.hintString.ptr, cast(int)uda.hintString.length);
		else
		{
			static if(vt == Variant.Type.object)
			{
				godot_string_new_data(&attr.hint_string, GodotClass!P._GODOT_internal_name.ptr,
					cast(int)GodotClass!P._GODOT_internal_name.length);
			}
			else godot_string_new(&attr.hint_string);
		}
		attr.usage = cast(godot_property_usage_flags)uda.usage;
		
		/// TODO: default value how?
		{
			godot_variant_new_nil(&attr.default_value);
		}
		
		
		static if(getterMatches.length)
		{
			auto gw = &getterMatches[0];
			alias GetWrapper = MethodWrapper!(T, ReturnType!gw);
			gf.method_data = GetWrapper.make(gw);
			gf.get_func = &GetWrapper.callPropertyGet;
			gf.free_func = &free;
		}
		else
		{
			gf.get_func = &emptyGetter;
		}
		
		static if(setterMatches.length)
		{
			auto sw = &setterMatches[0];
			alias SetWrapper = MethodWrapper!(T, void, Parameters!sw[0]);
			sf.method_data = SetWrapper.make(sw);
			sf.set_func = &SetWrapper.callPropertySet;
			sf.free_func = &free;
		}
		else
		{
			sf.set_func = &emptySetter;
		}
		
		godot_nativescript_register_property(handle, name, propName, &attr, sf, gf);
	}
	foreach(pName; godotPropertyVariableNames!T)
	{
		alias renames = getUDAs!(mixin("T."~pName), Rename);
		static if(renames.length && !is(renames[0])) enum immutable(char*) propName = renames[0].name;
		else enum immutable(char*) propName = pName;
		
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

		static if(uda.hintString.length) godot_string_new_data(&attr.hint_string,
			uda.hintString.ptr, cast(int)uda.hintString.length);
		else
		{
			static if(vt == Variant.Type.object)
			{
				godot_string_new_data(&attr.hint_string, GodotClass!P._GODOT_internal_name.ptr,
					cast(int)GodotClass!P._GODOT_internal_name.length);
			}
			else godot_string_new(&attr.hint_string);
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
		
		godot_nativescript_register_property(handle, name, propName, &attr, sf, gf);
	}
	// TODO: signals
}

