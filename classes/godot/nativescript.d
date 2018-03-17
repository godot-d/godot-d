/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.nativescript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.script;
import godot.gdnativelibrary;
/**

*/
@GodotBaseClass struct NativeScript
{
	static immutable string _GODOT_internal_name = "NativeScript";
public:
@nogc nothrow:
	union { godot_object _godot_object; Script _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in NativeScript other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NativeScript opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NativeScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NativeScript");
		if(constructor is null) return typeof(this).init;
		return cast(NativeScript)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_class_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_class_name") = _GODOT_set_class_name;
	/**
	
	*/
	void setClassName(StringArg0)(in StringArg0 class_name)
	{
		_GODOT_set_class_name.bind("NativeScript", "set_class_name");
		ptrcall!(void)(_GODOT_set_class_name, _godot_object, class_name);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_class_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_class_name") = _GODOT_get_class_name;
	/**
	
	*/
	String getClassName() const
	{
		_GODOT_get_class_name.bind("NativeScript", "get_class_name");
		return ptrcall!(String)(_GODOT_get_class_name, _godot_object);
	}
	package(godot) static GodotMethod!(void, GDNativeLibrary) _GODOT_set_library;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_library") = _GODOT_set_library;
	/**
	
	*/
	void setLibrary(GDNativeLibrary library)
	{
		_GODOT_set_library.bind("NativeScript", "set_library");
		ptrcall!(void)(_GODOT_set_library, _godot_object, library);
	}
	package(godot) static GodotMethod!(GDNativeLibrary) _GODOT_get_library;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_library") = _GODOT_get_library;
	/**
	
	*/
	Ref!GDNativeLibrary getLibrary() const
	{
		_GODOT_get_library.bind("NativeScript", "get_library");
		return ptrcall!(GDNativeLibrary)(_GODOT_get_library, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_class_documentation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_class_documentation") = _GODOT_get_class_documentation;
	/**
	Returns the documentation string that was previously set with `godot_nativescript_set_class_documentation`.
	*/
	String getClassDocumentation() const
	{
		_GODOT_get_class_documentation.bind("NativeScript", "get_class_documentation");
		return ptrcall!(String)(_GODOT_get_class_documentation, _godot_object);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_method_documentation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_method_documentation") = _GODOT_get_method_documentation;
	/**
	Returns the documentation string that was previously set with `godot_nativescript_set_method_documentation`.
	*/
	String getMethodDocumentation(StringArg0)(in StringArg0 method) const
	{
		_GODOT_get_method_documentation.bind("NativeScript", "get_method_documentation");
		return ptrcall!(String)(_GODOT_get_method_documentation, _godot_object, method);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_signal_documentation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_signal_documentation") = _GODOT_get_signal_documentation;
	/**
	Returns the documentation string that was previously set with `godot_nativescript_set_signal_documentation`.
	*/
	String getSignalDocumentation(StringArg0)(in StringArg0 signal_name) const
	{
		_GODOT_get_signal_documentation.bind("NativeScript", "get_signal_documentation");
		return ptrcall!(String)(_GODOT_get_signal_documentation, _godot_object, signal_name);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_property_documentation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_property_documentation") = _GODOT_get_property_documentation;
	/**
	Returns the documentation string that was previously set with `godot_nativescript_set_property_documentation`.
	*/
	String getPropertyDocumentation(StringArg0)(in StringArg0 path) const
	{
		_GODOT_get_property_documentation.bind("NativeScript", "get_property_documentation");
		return ptrcall!(String)(_GODOT_get_property_documentation, _godot_object, path);
	}
	package(godot) static GodotMethod!(GodotObject, GodotVarArgs) _GODOT__new;
	package(godot) alias _GODOT_methodBindInfo(string name : "new") = _GODOT__new;
	/**
	Constructs a new object of the base type with a script of this type already attached.
	$(I Note): Any arguments passed to this function will be ignored and not passed to the native constructor function. This will change with in a future API extension.
	*/
	GodotObject _new(VarArgs...)(VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("new");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!GodotObject);
	}
	/**
	
	*/
	@property String className()
	{
		return getClassName();
	}
	/// ditto
	@property void className(String v)
	{
		setClassName(v);
	}
	/**
	
	*/
	@property GDNativeLibrary library()
	{
		return getLibrary();
	}
	/// ditto
	@property void library(GDNativeLibrary v)
	{
		setLibrary(v);
	}
}
