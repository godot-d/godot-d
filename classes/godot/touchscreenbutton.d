/**
Button for touch screen devices.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.touchscreenbutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.texture;
import godot.bitmap;
import godot.shape2d;
import godot.inputevent;
/**
Button for touch screen devices.

You can set it to be visible on all screens, or only on touch devices.
*/
@GodotBaseClass struct TouchScreenButton
{
	static immutable string _GODOT_internal_name = "TouchScreenButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in TouchScreenButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TouchScreenButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TouchScreenButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TouchScreenButton");
		if(constructor is null) return typeof(this).init;
		return cast(TouchScreenButton)(constructor());
	}
	/// 
	enum VisibilityMode : int
	{
		/**
		Always visible.
		*/
		visibilityAlways = 0,
		/**
		Visible on touch screens only.
		*/
		visibilityTouchscreenOnly = 1,
	}
	/// 
	enum Constants : int
	{
		visibilityAlways = 0,
		visibilityTouchscreenOnly = 1,
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(Texture texture)
	{
		_GODOT_set_texture.bind("TouchScreenButton", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		_GODOT_get_texture.bind("TouchScreenButton", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_pressed") = _GODOT_set_texture_pressed;
	/**
	
	*/
	void setTexturePressed(Texture texture_pressed)
	{
		_GODOT_set_texture_pressed.bind("TouchScreenButton", "set_texture_pressed");
		ptrcall!(void)(_GODOT_set_texture_pressed, _godot_object, texture_pressed);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_pressed") = _GODOT_get_texture_pressed;
	/**
	
	*/
	Ref!Texture getTexturePressed() const
	{
		_GODOT_get_texture_pressed.bind("TouchScreenButton", "get_texture_pressed");
		return ptrcall!(Texture)(_GODOT_get_texture_pressed, _godot_object);
	}
	package(godot) static GodotMethod!(void, BitMap) _GODOT_set_bitmask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bitmask") = _GODOT_set_bitmask;
	/**
	
	*/
	void setBitmask(BitMap bitmask)
	{
		_GODOT_set_bitmask.bind("TouchScreenButton", "set_bitmask");
		ptrcall!(void)(_GODOT_set_bitmask, _godot_object, bitmask);
	}
	package(godot) static GodotMethod!(BitMap) _GODOT_get_bitmask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bitmask") = _GODOT_get_bitmask;
	/**
	
	*/
	Ref!BitMap getBitmask() const
	{
		_GODOT_get_bitmask.bind("TouchScreenButton", "get_bitmask");
		return ptrcall!(BitMap)(_GODOT_get_bitmask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Shape2D) _GODOT_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape") = _GODOT_set_shape;
	/**
	
	*/
	void setShape(Shape2D shape)
	{
		_GODOT_set_shape.bind("TouchScreenButton", "set_shape");
		ptrcall!(void)(_GODOT_set_shape, _godot_object, shape);
	}
	package(godot) static GodotMethod!(Shape2D) _GODOT_get_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shape") = _GODOT_get_shape;
	/**
	
	*/
	Ref!Shape2D getShape() const
	{
		_GODOT_get_shape.bind("TouchScreenButton", "get_shape");
		return ptrcall!(Shape2D)(_GODOT_get_shape, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shape_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape_centered") = _GODOT_set_shape_centered;
	/**
	
	*/
	void setShapeCentered(in bool _bool)
	{
		_GODOT_set_shape_centered.bind("TouchScreenButton", "set_shape_centered");
		ptrcall!(void)(_GODOT_set_shape_centered, _godot_object, _bool);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_shape_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shape_centered") = _GODOT_is_shape_centered;
	/**
	
	*/
	bool isShapeCentered() const
	{
		_GODOT_is_shape_centered.bind("TouchScreenButton", "is_shape_centered");
		return ptrcall!(bool)(_GODOT_is_shape_centered, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shape_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shape_visible") = _GODOT_set_shape_visible;
	/**
	
	*/
	void setShapeVisible(in bool _bool)
	{
		_GODOT_set_shape_visible.bind("TouchScreenButton", "set_shape_visible");
		ptrcall!(void)(_GODOT_set_shape_visible, _godot_object, _bool);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_shape_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_shape_visible") = _GODOT_is_shape_visible;
	/**
	
	*/
	bool isShapeVisible() const
	{
		_GODOT_is_shape_visible.bind("TouchScreenButton", "is_shape_visible");
		return ptrcall!(bool)(_GODOT_is_shape_visible, _godot_object);
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_action") = _GODOT_set_action;
	/**
	
	*/
	void setAction(StringArg0)(in StringArg0 action)
	{
		_GODOT_set_action.bind("TouchScreenButton", "set_action");
		ptrcall!(void)(_GODOT_set_action, _godot_object, action);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_action") = _GODOT_get_action;
	/**
	
	*/
	String getAction() const
	{
		_GODOT_get_action.bind("TouchScreenButton", "get_action");
		return ptrcall!(String)(_GODOT_get_action, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_visibility_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_visibility_mode") = _GODOT_set_visibility_mode;
	/**
	
	*/
	void setVisibilityMode(in long mode)
	{
		_GODOT_set_visibility_mode.bind("TouchScreenButton", "set_visibility_mode");
		ptrcall!(void)(_GODOT_set_visibility_mode, _godot_object, mode);
	}
	package(godot) static GodotMethod!(TouchScreenButton.VisibilityMode) _GODOT_get_visibility_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_visibility_mode") = _GODOT_get_visibility_mode;
	/**
	
	*/
	TouchScreenButton.VisibilityMode getVisibilityMode() const
	{
		_GODOT_get_visibility_mode.bind("TouchScreenButton", "get_visibility_mode");
		return ptrcall!(TouchScreenButton.VisibilityMode)(_GODOT_get_visibility_mode, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_passby_press;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_passby_press") = _GODOT_set_passby_press;
	/**
	
	*/
	void setPassbyPress(in bool enabled)
	{
		_GODOT_set_passby_press.bind("TouchScreenButton", "set_passby_press");
		ptrcall!(void)(_GODOT_set_passby_press, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_passby_press_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_passby_press_enabled") = _GODOT_is_passby_press_enabled;
	/**
	
	*/
	bool isPassbyPressEnabled() const
	{
		_GODOT_is_passby_press_enabled.bind("TouchScreenButton", "is_passby_press_enabled");
		return ptrcall!(bool)(_GODOT_is_passby_press_enabled, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_pressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_pressed") = _GODOT_is_pressed;
	/**
	Returns `true` if this button is currently pressed.
	*/
	bool isPressed() const
	{
		_GODOT_is_pressed.bind("TouchScreenButton", "is_pressed");
		return ptrcall!(bool)(_GODOT_is_pressed, _godot_object);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_input") = _GODOT__input;
	/**
	
	*/
	void _input(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	The button's texture for the normal state.
	*/
	@property Texture normal()
	{
		return getTexture();
	}
	/// ditto
	@property void normal(Texture v)
	{
		setTexture(v);
	}
	/**
	The button's texture for the pressed state.
	*/
	@property Texture pressed()
	{
		return getTexturePressed();
	}
	/// ditto
	@property void pressed(Texture v)
	{
		setTexturePressed(v);
	}
	/**
	The button's bitmask.
	*/
	@property BitMap bitmask()
	{
		return getBitmask();
	}
	/// ditto
	@property void bitmask(BitMap v)
	{
		setBitmask(v);
	}
	/**
	The button's shape.
	*/
	@property Shape2D shape()
	{
		return getShape();
	}
	/// ditto
	@property void shape(Shape2D v)
	{
		setShape(v);
	}
	/**
	If `true` the button's shape is centered.
	*/
	@property bool shapeCentered()
	{
		return isShapeCentered();
	}
	/// ditto
	@property void shapeCentered(bool v)
	{
		setShapeCentered(v);
	}
	/**
	If `true` the button's shape is visible.
	*/
	@property bool shapeVisible()
	{
		return isShapeVisible();
	}
	/// ditto
	@property void shapeVisible(bool v)
	{
		setShapeVisible(v);
	}
	/**
	If `true` passby presses are enabled.
	*/
	@property bool passbyPress()
	{
		return isPassbyPressEnabled();
	}
	/// ditto
	@property void passbyPress(bool v)
	{
		setPassbyPress(v);
	}
	/**
	The button's action. Actions can be handled with $(D InputEventAction).
	*/
	@property String action()
	{
		return getAction();
	}
	/// ditto
	@property void action(String v)
	{
		setAction(v);
	}
	/**
	The button's visibility mode. See `VISIBILITY_*` constants.
	*/
	@property TouchScreenButton.VisibilityMode visibilityMode()
	{
		return getVisibilityMode();
	}
	/// ditto
	@property void visibilityMode(long v)
	{
		setVisibilityMode(v);
	}
}
