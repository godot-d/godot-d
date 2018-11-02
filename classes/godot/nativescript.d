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
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct NativeScript
{
	enum string _GODOT_internal_name = "NativeScript";
public:
@nogc nothrow:
	union { godot_object _godot_object; Script _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_class_name") GodotMethod!(void, String) setClassName;
		@GodotName("get_class_name") GodotMethod!(String) getClassName;
		@GodotName("set_library") GodotMethod!(void, GDNativeLibrary) setLibrary;
		@GodotName("get_library") GodotMethod!(GDNativeLibrary) getLibrary;
		@GodotName("set_script_class_name") GodotMethod!(void, String) setScriptClassName;
		@GodotName("get_script_class_name") GodotMethod!(String) getScriptClassName;
		@GodotName("set_script_class_icon_path") GodotMethod!(void, String) setScriptClassIconPath;
		@GodotName("get_script_class_icon_path") GodotMethod!(String) getScriptClassIconPath;
		@GodotName("get_class_documentation") GodotMethod!(String) getClassDocumentation;
		@GodotName("get_method_documentation") GodotMethod!(String, String) getMethodDocumentation;
		@GodotName("get_signal_documentation") GodotMethod!(String, String) getSignalDocumentation;
		@GodotName("get_property_documentation") GodotMethod!(String, String) getPropertyDocumentation;
		@GodotName("new") GodotMethod!(GodotObject, GodotVarArgs) _new;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void setClassName(StringArg0)(in StringArg0 class_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClassName, _godot_object, class_name);
	}
	/**
	
	*/
	String getClassName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getClassName, _godot_object);
	}
	/**
	
	*/
	void setLibrary(GDNativeLibrary library)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLibrary, _godot_object, library);
	}
	/**
	
	*/
	Ref!GDNativeLibrary getLibrary() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GDNativeLibrary)(_classBinding.getLibrary, _godot_object);
	}
	/**
	
	*/
	void setScriptClassName(StringArg0)(in StringArg0 class_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScriptClassName, _godot_object, class_name);
	}
	/**
	
	*/
	String getScriptClassName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getScriptClassName, _godot_object);
	}
	/**
	
	*/
	void setScriptClassIconPath(StringArg0)(in StringArg0 icon_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScriptClassIconPath, _godot_object, icon_path);
	}
	/**
	
	*/
	String getScriptClassIconPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getScriptClassIconPath, _godot_object);
	}
	/**
	Returns the documentation string that was previously set with `godot_nativescript_set_class_documentation`.
	*/
	String getClassDocumentation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getClassDocumentation, _godot_object);
	}
	/**
	Returns the documentation string that was previously set with `godot_nativescript_set_method_documentation`.
	*/
	String getMethodDocumentation(StringArg0)(in StringArg0 method) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getMethodDocumentation, _godot_object, method);
	}
	/**
	Returns the documentation string that was previously set with `godot_nativescript_set_signal_documentation`.
	*/
	String getSignalDocumentation(StringArg0)(in StringArg0 signal_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSignalDocumentation, _godot_object, signal_name);
	}
	/**
	Returns the documentation string that was previously set with `godot_nativescript_set_property_documentation`.
	*/
	String getPropertyDocumentation(StringArg0)(in StringArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getPropertyDocumentation, _godot_object, path);
	}
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
}
