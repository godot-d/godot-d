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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.script;
import godot.gdnativelibrary;
/**

*/
@GodotBaseClass struct NativeScript
{
	package(godot) enum string _GODOT_internal_name = "NativeScript";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Script _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_class_documentation") GodotMethod!(String) getClassDocumentation;
		@GodotName("get_class_name") GodotMethod!(String) getClassName;
		@GodotName("get_library") GodotMethod!(GDNativeLibrary) getLibrary;
		@GodotName("get_method_documentation") GodotMethod!(String, String) getMethodDocumentation;
		@GodotName("get_property_documentation") GodotMethod!(String, String) getPropertyDocumentation;
		@GodotName("get_script_class_icon_path") GodotMethod!(String) getScriptClassIconPath;
		@GodotName("get_script_class_name") GodotMethod!(String) getScriptClassName;
		@GodotName("get_signal_documentation") GodotMethod!(String, String) getSignalDocumentation;
		@GodotName("new") GodotMethod!(Variant, GodotVarArgs) _new;
		@GodotName("set_class_name") GodotMethod!(void, String) setClassName;
		@GodotName("set_library") GodotMethod!(void, GDNativeLibrary) setLibrary;
		@GodotName("set_script_class_icon_path") GodotMethod!(void, String) setScriptClassIconPath;
		@GodotName("set_script_class_name") GodotMethod!(void, String) setScriptClassName;
	}
	/// 
	pragma(inline, true) bool opEquals(in NativeScript other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of NativeScript.
	/// Note: use `memnew!NativeScript` instead.
	static NativeScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NativeScript");
		if(constructor is null) return typeof(this).init;
		return cast(NativeScript)(constructor());
	}
	/**
	
	*/
	String getClassDocumentation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getClassDocumentation, _godot_object);
	}
	/**
	
	*/
	String getClassName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getClassName, _godot_object);
	}
	/**
	
	*/
	Ref!GDNativeLibrary getLibrary() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GDNativeLibrary)(GDNativeClassBinding.getLibrary, _godot_object);
	}
	/**
	
	*/
	String getMethodDocumentation(in String method) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getMethodDocumentation, _godot_object, method);
	}
	/**
	
	*/
	String getPropertyDocumentation(in String path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getPropertyDocumentation, _godot_object, path);
	}
	/**
	
	*/
	String getScriptClassIconPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getScriptClassIconPath, _godot_object);
	}
	/**
	
	*/
	String getScriptClassName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getScriptClassName, _godot_object);
	}
	/**
	
	*/
	String getSignalDocumentation(in String signal_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSignalDocumentation, _godot_object, signal_name);
	}
	/**
	
	*/
	Variant _new(VarArgs...)(VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("new");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setClassName(in String class_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClassName, _godot_object, class_name);
	}
	/**
	
	*/
	void setLibrary(GDNativeLibrary library)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLibrary, _godot_object, library);
	}
	/**
	
	*/
	void setScriptClassIconPath(in String icon_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScriptClassIconPath, _godot_object, icon_path);
	}
	/**
	
	*/
	void setScriptClassName(in String class_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScriptClassName, _godot_object, class_name);
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
	/**
	
	*/
	@property String scriptClassIconPath()
	{
		return getScriptClassIconPath();
	}
	/// ditto
	@property void scriptClassIconPath(String v)
	{
		setScriptClassIconPath(v);
	}
	/**
	
	*/
	@property String scriptClassName()
	{
		return getScriptClassName();
	}
	/// ditto
	@property void scriptClassName(String v)
	{
		setScriptClassName(v);
	}
}
