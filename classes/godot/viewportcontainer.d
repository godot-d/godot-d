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
import godot.d.traits;
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
$(B Note:) Changing a ViewportContainer's $(D Control.rectScale) will cause its contents to appear distorted. To change its visual size without causing distortion, adjust the node's margins instead (if it's not already in a container).
*/
@GodotBaseClass struct ViewportContainer
{
	package(godot) enum string _GODOT_internal_name = "ViewportContainer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_input") GodotMethod!(void, InputEvent) _input;
		@GodotName("_unhandled_input") GodotMethod!(void, InputEvent) _unhandledInput;
		@GodotName("get_stretch_shrink") GodotMethod!(long) getStretchShrink;
		@GodotName("is_stretch_enabled") GodotMethod!(bool) isStretchEnabled;
		@GodotName("set_stretch") GodotMethod!(void, bool) setStretch;
		@GodotName("set_stretch_shrink") GodotMethod!(void, long) setStretchShrink;
	}
	/// 
	pragma(inline, true) bool opEquals(in ViewportContainer other) const
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
	/// Construct a new instance of ViewportContainer.
	/// Note: use `memnew!ViewportContainer` instead.
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
		return ptrcall!(long)(GDNativeClassBinding.getStretchShrink, _godot_object);
	}
	/**
	
	*/
	bool isStretchEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isStretchEnabled, _godot_object);
	}
	/**
	
	*/
	void setStretch(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStretch, _godot_object, enable);
	}
	/**
	
	*/
	void setStretchShrink(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStretchShrink, _godot_object, amount);
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
