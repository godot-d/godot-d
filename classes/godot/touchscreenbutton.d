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
import godot.canvasitem;
import godot.node;
/**
Button for touch screen devices.

You can set it to be visible on all screens, or only on touch devices.
*/
@GodotBaseClass struct TouchScreenButton
{
	enum string _GODOT_internal_name = "TouchScreenButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("set_texture_pressed") GodotMethod!(void, Texture) setTexturePressed;
		@GodotName("get_texture_pressed") GodotMethod!(Texture) getTexturePressed;
		@GodotName("set_bitmask") GodotMethod!(void, BitMap) setBitmask;
		@GodotName("get_bitmask") GodotMethod!(BitMap) getBitmask;
		@GodotName("set_shape") GodotMethod!(void, Shape2D) setShape;
		@GodotName("get_shape") GodotMethod!(Shape2D) getShape;
		@GodotName("set_shape_centered") GodotMethod!(void, bool) setShapeCentered;
		@GodotName("is_shape_centered") GodotMethod!(bool) isShapeCentered;
		@GodotName("set_shape_visible") GodotMethod!(void, bool) setShapeVisible;
		@GodotName("is_shape_visible") GodotMethod!(bool) isShapeVisible;
		@GodotName("set_action") GodotMethod!(void, String) setAction;
		@GodotName("get_action") GodotMethod!(String) getAction;
		@GodotName("set_visibility_mode") GodotMethod!(void, long) setVisibilityMode;
		@GodotName("get_visibility_mode") GodotMethod!(TouchScreenButton.VisibilityMode) getVisibilityMode;
		@GodotName("set_passby_press") GodotMethod!(void, bool) setPassbyPress;
		@GodotName("is_passby_press_enabled") GodotMethod!(bool) isPassbyPressEnabled;
		@GodotName("is_pressed") GodotMethod!(bool) isPressed;
		@GodotName("_input") GodotMethod!(void, InputEvent) _input;
	}
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
	@disable new(size_t s);
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
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTexture, _godot_object, texture);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	void setTexturePressed(Texture texture_pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTexturePressed, _godot_object, texture_pressed);
	}
	/**
	
	*/
	Ref!Texture getTexturePressed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getTexturePressed, _godot_object);
	}
	/**
	
	*/
	void setBitmask(BitMap bitmask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBitmask, _godot_object, bitmask);
	}
	/**
	
	*/
	Ref!BitMap getBitmask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BitMap)(_classBinding.getBitmask, _godot_object);
	}
	/**
	
	*/
	void setShape(Shape2D shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShape, _godot_object, shape);
	}
	/**
	
	*/
	Ref!Shape2D getShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Shape2D)(_classBinding.getShape, _godot_object);
	}
	/**
	
	*/
	void setShapeCentered(in bool _bool)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShapeCentered, _godot_object, _bool);
	}
	/**
	
	*/
	bool isShapeCentered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isShapeCentered, _godot_object);
	}
	/**
	
	*/
	void setShapeVisible(in bool _bool)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setShapeVisible, _godot_object, _bool);
	}
	/**
	
	*/
	bool isShapeVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isShapeVisible, _godot_object);
	}
	/**
	
	*/
	void setAction(StringArg0)(in StringArg0 action)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAction, _godot_object, action);
	}
	/**
	
	*/
	String getAction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getAction, _godot_object);
	}
	/**
	
	*/
	void setVisibilityMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVisibilityMode, _godot_object, mode);
	}
	/**
	
	*/
	TouchScreenButton.VisibilityMode getVisibilityMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TouchScreenButton.VisibilityMode)(_classBinding.getVisibilityMode, _godot_object);
	}
	/**
	
	*/
	void setPassbyPress(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPassbyPress, _godot_object, enabled);
	}
	/**
	
	*/
	bool isPassbyPressEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPassbyPressEnabled, _godot_object);
	}
	/**
	Returns `true` if this button is currently pressed.
	*/
	bool isPressed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPressed, _godot_object);
	}
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
