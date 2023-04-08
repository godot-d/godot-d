/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.javascript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.javascriptobject;
/**

*/
@GodotBaseClass struct JavaScriptSingleton
{
	package(godot) enum string _GODOT_internal_name = "JavaScript";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "JavaScript";
		@GodotName("create_callback") GodotMethod!(JavaScriptObject, GodotObject, String) createCallback;
		@GodotName("create_object") GodotMethod!(Variant, String, GodotVarArgs) createObject;
		@GodotName("download_buffer") GodotMethod!(void, PoolByteArray, String, String) downloadBuffer;
		@GodotName("eval") GodotMethod!(Variant, String, bool) eval;
		@GodotName("get_interface") GodotMethod!(JavaScriptObject, String) getInterface;
		@GodotName("pwa_needs_update") GodotMethod!(bool) pwaNeedsUpdate;
		@GodotName("pwa_update") GodotMethod!(GodotError) pwaUpdate;
	}
	/// 
	pragma(inline, true) bool opEquals(in JavaScriptSingleton other) const
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
	/// Construct a new instance of JavaScriptSingleton.
	/// Note: use `memnew!JavaScriptSingleton` instead.
	static JavaScriptSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("JavaScript");
		if(constructor is null) return typeof(this).init;
		return cast(JavaScriptSingleton)(constructor());
	}
	/**
	
	*/
	Ref!JavaScriptObject createCallback(GodotObject object, in String method)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(JavaScriptObject)(GDNativeClassBinding.createCallback, _godot_object, object, method);
	}
	/**
	
	*/
	Variant createObject(VarArgs...)(in String object, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(object);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("create_object");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void downloadBuffer(in PoolByteArray buffer, in String name, in String mime = gs!"application/octet-stream")
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.downloadBuffer, _godot_object, buffer, name, mime);
	}
	/**
	
	*/
	Variant eval(in String code, in bool use_global_execution_context = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.eval, _godot_object, code, use_global_execution_context);
	}
	/**
	
	*/
	Ref!JavaScriptObject getInterface(in String _interface)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(JavaScriptObject)(GDNativeClassBinding.getInterface, _godot_object, _interface);
	}
	/**
	
	*/
	bool pwaNeedsUpdate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.pwaNeedsUpdate, _godot_object);
	}
	/**
	
	*/
	GodotError pwaUpdate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.pwaUpdate, _godot_object);
	}
}
/// Returns: the JavaScriptSingleton
@property @nogc nothrow pragma(inline, true)
JavaScriptSingleton JavaScript()
{
	checkClassBinding!JavaScriptSingleton();
	return JavaScriptSingleton(JavaScriptSingleton.GDNativeClassBinding._singleton);
}
