/**
Control for holding $(D Viewport)s.

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
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
/**
Control for holding $(D Viewport)s.

A $(D Container) node that holds a $(D Viewport), automatically setting its size.
*/
@GodotBaseClass struct ViewportContainer
{
	enum string _GODOT_internal_name = "ViewportContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_input") GodotMethod!(void, InputEvent) _input;
		@GodotName("_unhandled_input") GodotMethod!(void, InputEvent) _unhandledInput;
		@GodotName("get_stretch_shrink") GodotMethod!(long) getStretchShrink;
		@GodotName("is_stretch_enabled") GodotMethod!(bool) isStretchEnabled;
		@GodotName("set_stretch") GodotMethod!(void, bool) setStretch;
		@GodotName("set_stretch_shrink") GodotMethod!(void, long) setStretchShrink;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void _input(InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _unhandledInput(InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_unhandled_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long getStretchShrink() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getStretchShrink, _godot_object);
	}
	/**
	
	*/
	bool isStretchEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isStretchEnabled, _godot_object);
	}
	/**
	
	*/
	void setStretch(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStretch, _godot_object, enable);
	}
	/**
	
	*/
	void setStretchShrink(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStretchShrink, _godot_object, amount);
	}
	/**
	If `true`, the viewport will be scaled to the control's size.
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
	Divides the viewport's effective resolution by this value while preserving its scale. This can be used to speed up rendering.
	For example, a 1280×720 viewport with $(D stretchShrink) set to `2` will be rendered at 640×360 while occupying the same size in the container.
	$(B Note:) $(D stretch) must be `true` for this property to work.
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
