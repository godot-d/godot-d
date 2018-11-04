/**
A Visual Script node returning a singleton from $(D @GlobalScope)

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptenginesingleton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
import godot.resource;
import godot.reference;
/**
A Visual Script node returning a singleton from $(D @GlobalScope)


*/
@GodotBaseClass struct VisualScriptEngineSingleton
{
	enum string _GODOT_internal_name = "VisualScriptEngineSingleton";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_singleton") GodotMethod!(void, String) setSingleton;
		@GodotName("get_singleton") GodotMethod!(String) getSingleton;
	}
	bool opEquals(in VisualScriptEngineSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptEngineSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptEngineSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptEngineSingleton");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptEngineSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setSingleton(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSingleton, _godot_object, name);
	}
	/**
	
	*/
	String getSingleton()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSingleton, _godot_object);
	}
	/**
	The singleton's name.
	*/
	@property String constant()
	{
		return getSingleton();
	}
	/// ditto
	@property void constant(String v)
	{
		setSingleton(v);
	}
}
