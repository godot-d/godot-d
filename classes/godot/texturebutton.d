/**
Texture-based button. Supports Pressed, Hover, Disabled and Focused states.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.texturebutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.basebutton;
import godot.texture;
import godot.bitmap;
/**
Texture-based button. Supports Pressed, Hover, Disabled and Focused states.

`TextureButton` has the same functionality as $(D Button), except it uses sprites instead of Godot's $(D Theme) resource. It is faster to create, but it doesn't support localization like more complex Controls.
The Normal state's texture is required. Others are optional.
*/
@GodotBaseClass struct TextureButton
{
	static immutable string _GODOT_internal_name = "TextureButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; BaseButton _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in TextureButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TextureButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TextureButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TextureButton");
		if(constructor is null) return typeof(this).init;
		return cast(TextureButton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum StretchMode : int
	{
		/**
		Scale to fit the node's bounding rectangle.
		*/
		stretchScale = 0,
		/**
		Tile inside the node's bounding rectangle.
		*/
		stretchTile = 1,
		/**
		The texture keeps its original size and stays in the bounding rectangle's top-left corner.
		*/
		stretchKeep = 2,
		/**
		The texture keeps its original size and stays centered in the node's bounding rectangle.
		*/
		stretchKeepCentered = 3,
		/**
		Scale the texture to fit the node's bounding rectangle, but maintain the texture's aspect ratio.
		*/
		stretchKeepAspect = 4,
		/**
		Scale the texture to fit the node's bounding rectangle, center it, and maintain its aspect ratio.
		*/
		stretchKeepAspectCentered = 5,
		/**
		Scale the texture so that the shorter side fits the bounding rectangle. The other side clips to the node's limits.
		*/
		stretchKeepAspectCovered = 6,
	}
	/// 
	enum Constants : int
	{
		stretchScale = 0,
		stretchTile = 1,
		stretchKeep = 2,
		stretchKeepCentered = 3,
		stretchKeepAspect = 4,
		stretchKeepAspectCentered = 5,
		stretchKeepAspectCovered = 6,
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_normal_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_texture") = _GODOT_set_normal_texture;
	/**
	
	*/
	void setNormalTexture(Texture texture)
	{
		_GODOT_set_normal_texture.bind("TextureButton", "set_normal_texture");
		ptrcall!(void)(_GODOT_set_normal_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_pressed_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_pressed_texture") = _GODOT_set_pressed_texture;
	/**
	
	*/
	void setPressedTexture(Texture texture)
	{
		_GODOT_set_pressed_texture.bind("TextureButton", "set_pressed_texture");
		ptrcall!(void)(_GODOT_set_pressed_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_hover_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hover_texture") = _GODOT_set_hover_texture;
	/**
	
	*/
	void setHoverTexture(Texture texture)
	{
		_GODOT_set_hover_texture.bind("TextureButton", "set_hover_texture");
		ptrcall!(void)(_GODOT_set_hover_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_disabled_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disabled_texture") = _GODOT_set_disabled_texture;
	/**
	
	*/
	void setDisabledTexture(Texture texture)
	{
		_GODOT_set_disabled_texture.bind("TextureButton", "set_disabled_texture");
		ptrcall!(void)(_GODOT_set_disabled_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_focused_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_focused_texture") = _GODOT_set_focused_texture;
	/**
	
	*/
	void setFocusedTexture(Texture texture)
	{
		_GODOT_set_focused_texture.bind("TextureButton", "set_focused_texture");
		ptrcall!(void)(_GODOT_set_focused_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, BitMap) _GODOT_set_click_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_click_mask") = _GODOT_set_click_mask;
	/**
	
	*/
	void setClickMask(BitMap mask)
	{
		_GODOT_set_click_mask.bind("TextureButton", "set_click_mask");
		ptrcall!(void)(_GODOT_set_click_mask, _godot_object, mask);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand") = _GODOT_set_expand;
	/**
	
	*/
	void setExpand(in bool p_expand)
	{
		_GODOT_set_expand.bind("TextureButton", "set_expand");
		ptrcall!(void)(_GODOT_set_expand, _godot_object, p_expand);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stretch_mode") = _GODOT_set_stretch_mode;
	/**
	
	*/
	void setStretchMode(in long p_mode)
	{
		_GODOT_set_stretch_mode.bind("TextureButton", "set_stretch_mode");
		ptrcall!(void)(_GODOT_set_stretch_mode, _godot_object, p_mode);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_normal_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_texture") = _GODOT_get_normal_texture;
	/**
	
	*/
	Ref!Texture getNormalTexture() const
	{
		_GODOT_get_normal_texture.bind("TextureButton", "get_normal_texture");
		return ptrcall!(Texture)(_GODOT_get_normal_texture, _godot_object);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_pressed_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_pressed_texture") = _GODOT_get_pressed_texture;
	/**
	
	*/
	Ref!Texture getPressedTexture() const
	{
		_GODOT_get_pressed_texture.bind("TextureButton", "get_pressed_texture");
		return ptrcall!(Texture)(_GODOT_get_pressed_texture, _godot_object);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_hover_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hover_texture") = _GODOT_get_hover_texture;
	/**
	
	*/
	Ref!Texture getHoverTexture() const
	{
		_GODOT_get_hover_texture.bind("TextureButton", "get_hover_texture");
		return ptrcall!(Texture)(_GODOT_get_hover_texture, _godot_object);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_disabled_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_disabled_texture") = _GODOT_get_disabled_texture;
	/**
	
	*/
	Ref!Texture getDisabledTexture() const
	{
		_GODOT_get_disabled_texture.bind("TextureButton", "get_disabled_texture");
		return ptrcall!(Texture)(_GODOT_get_disabled_texture, _godot_object);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_focused_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_focused_texture") = _GODOT_get_focused_texture;
	/**
	
	*/
	Ref!Texture getFocusedTexture() const
	{
		_GODOT_get_focused_texture.bind("TextureButton", "get_focused_texture");
		return ptrcall!(Texture)(_GODOT_get_focused_texture, _godot_object);
	}
	package(godot) static GodotMethod!(BitMap) _GODOT_get_click_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_click_mask") = _GODOT_get_click_mask;
	/**
	
	*/
	Ref!BitMap getClickMask() const
	{
		_GODOT_get_click_mask.bind("TextureButton", "get_click_mask");
		return ptrcall!(BitMap)(_GODOT_get_click_mask, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_expand") = _GODOT_get_expand;
	/**
	
	*/
	bool getExpand() const
	{
		_GODOT_get_expand.bind("TextureButton", "get_expand");
		return ptrcall!(bool)(_GODOT_get_expand, _godot_object);
	}
	package(godot) static GodotMethod!(TextureButton.StretchMode) _GODOT_get_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stretch_mode") = _GODOT_get_stretch_mode;
	/**
	
	*/
	TextureButton.StretchMode getStretchMode() const
	{
		_GODOT_get_stretch_mode.bind("TextureButton", "get_stretch_mode");
		return ptrcall!(TextureButton.StretchMode)(_GODOT_get_stretch_mode, _godot_object);
	}
	/**
	Texture to display by default, when the node is $(B not) in the disabled, focused, hover or pressed state.
	*/
	@property Texture textureNormal()
	{
		return getNormalTexture();
	}
	/// ditto
	@property void textureNormal(Texture v)
	{
		setNormalTexture(v);
	}
	/**
	Texture to display on mouse down over the node, if the node has keyboard focus and the player presses the enter key or if the player presses the $(D BaseButton.shortcut) key.
	*/
	@property Texture texturePressed()
	{
		return getPressedTexture();
	}
	/// ditto
	@property void texturePressed(Texture v)
	{
		setPressedTexture(v);
	}
	/**
	Texture to display when the mouse hovers the node.
	*/
	@property Texture textureHover()
	{
		return getHoverTexture();
	}
	/// ditto
	@property void textureHover(Texture v)
	{
		setHoverTexture(v);
	}
	/**
	Texture to display when the node is disabled. See $(D BaseButton.disabled).
	*/
	@property Texture textureDisabled()
	{
		return getDisabledTexture();
	}
	/// ditto
	@property void textureDisabled(Texture v)
	{
		setDisabledTexture(v);
	}
	/**
	Texture to display when the node has mouse or keyboard focus.
	*/
	@property Texture textureFocused()
	{
		return getFocusedTexture();
	}
	/// ditto
	@property void textureFocused(Texture v)
	{
		setFocusedTexture(v);
	}
	/**
	Pure black and white $(D Bitmap) image to use for click detection. On the mask, white pixels represent the button's clickable area. Use it to create buttons with curved shapes.
	*/
	@property BitMap textureClickMask()
	{
		return getClickMask();
	}
	/// ditto
	@property void textureClickMask(BitMap v)
	{
		setClickMask(v);
	}
	/**
	If `true` the texture stretches to the edges of the node's bounding rectangle using the $(D stretchMode). If `false` the texture will not scale with the node. Default value: `false`.
	*/
	@property bool expand()
	{
		return getExpand();
	}
	/// ditto
	@property void expand(bool v)
	{
		setExpand(v);
	}
	/**
	Controls the texture's behavior when you resize the node's bounding rectangle, $(B only if) $(D expand) is `true`. Set it to one of the `STRETCH_*` constants. See the constants to learn more.
	*/
	@property TextureButton.StretchMode stretchMode()
	{
		return getStretchMode();
	}
	/// ditto
	@property void stretchMode(long v)
	{
		setStretchMode(v);
	}
}
