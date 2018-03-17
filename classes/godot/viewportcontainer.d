/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.viewportcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.container;
import godot.inputevent;
/**

*/
@GodotBaseClass struct ViewportContainer
{
	static immutable string _GODOT_internal_name = "ViewportContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ViewportContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ViewportContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ViewportContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ViewportContainer");
		if(constructor is null) return typeof(this).init;
		return cast(ViewportContainer)(constructor());
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input") = _GODOT__input;
	/**
	
	*/
	void _input(InputEvent event)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_stretch;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stretch") = _GODOT_set_stretch;
	/**
	
	*/
	void setStretch(in bool enable)
	{
		_GODOT_set_stretch.bind("ViewportContainer", "set_stretch");
		ptrcall!(void)(_GODOT_set_stretch, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_stretch_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_stretch_enabled") = _GODOT_is_stretch_enabled;
	/**
	
	*/
	bool isStretchEnabled() const
	{
		_GODOT_is_stretch_enabled.bind("ViewportContainer", "is_stretch_enabled");
		return ptrcall!(bool)(_GODOT_is_stretch_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_stretch_shrink;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stretch_shrink") = _GODOT_set_stretch_shrink;
	/**
	
	*/
	void setStretchShrink(in long amount)
	{
		_GODOT_set_stretch_shrink.bind("ViewportContainer", "set_stretch_shrink");
		ptrcall!(void)(_GODOT_set_stretch_shrink, _godot_object, amount);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_stretch_shrink;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stretch_shrink") = _GODOT_get_stretch_shrink;
	/**
	
	*/
	long getStretchShrink() const
	{
		_GODOT_get_stretch_shrink.bind("ViewportContainer", "get_stretch_shrink");
		return ptrcall!(long)(_GODOT_get_stretch_shrink, _godot_object);
	}
	/**
	
	*/
	@property bool stretch()
	{
		return isStretchEnabled();
	}
	/// ditto
	@property void stretch(bool v)
	{
		setStretch(v);
	}
	/**
	
	*/
	@property long stretchShrink()
	{
		return getStretchShrink();
	}
	/// ditto
	@property void stretchShrink(long v)
	{
		setStretchShrink(v);
	}
}
