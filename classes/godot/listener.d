/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.listener;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.node;
/**

*/
@GodotBaseClass struct Listener
{
	enum string _GODOT_internal_name = "Listener";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("make_current") GodotMethod!(void) makeCurrent;
		@GodotName("clear_current") GodotMethod!(void) clearCurrent;
		@GodotName("is_current") GodotMethod!(bool) isCurrent;
		@GodotName("get_listener_transform") GodotMethod!(Transform) getListenerTransform;
	}
	bool opEquals(in Listener other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Listener opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Listener _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Listener");
		if(constructor is null) return typeof(this).init;
		return cast(Listener)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void makeCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.makeCurrent, _godot_object);
	}
	/**
	
	*/
	void clearCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearCurrent, _godot_object);
	}
	/**
	
	*/
	bool isCurrent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCurrent, _godot_object);
	}
	/**
	
	*/
	Transform getListenerTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getListenerTransform, _godot_object);
	}
}
