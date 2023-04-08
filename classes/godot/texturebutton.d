/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.texturebutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.basebutton;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.bitmap;
import godot.texture;
/**

*/
@GodotBaseClass struct TextureButton
{
	package(godot) enum string _GODOT_internal_name = "TextureButton";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ BaseButton _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_click_mask") GodotMethod!(BitMap) getClickMask;
		@GodotName("get_disabled_texture") GodotMethod!(Texture) getDisabledTexture;
		@GodotName("get_expand") GodotMethod!(bool) getExpand;
		@GodotName("get_focused_texture") GodotMethod!(Texture) getFocusedTexture;
		@GodotName("get_hover_texture") GodotMethod!(Texture) getHoverTexture;
		@GodotName("get_normal_texture") GodotMethod!(Texture) getNormalTexture;
		@GodotName("get_pressed_texture") GodotMethod!(Texture) getPressedTexture;
		@GodotName("get_stretch_mode") GodotMethod!(TextureButton.StretchMode) getStretchMode;
		@GodotName("is_flipped_h") GodotMethod!(bool) isFlippedH;
		@GodotName("is_flipped_v") GodotMethod!(bool) isFlippedV;
		@GodotName("set_click_mask") GodotMethod!(void, BitMap) setClickMask;
		@GodotName("set_disabled_texture") GodotMethod!(void, Texture) setDisabledTexture;
		@GodotName("set_expand") GodotMethod!(void, bool) setExpand;
		@GodotName("set_flip_h") GodotMethod!(void, bool) setFlipH;
		@GodotName("set_flip_v") GodotMethod!(void, bool) setFlipV;
		@GodotName("set_focused_texture") GodotMethod!(void, Texture) setFocusedTexture;
		@GodotName("set_hover_texture") GodotMethod!(void, Texture) setHoverTexture;
		@GodotName("set_normal_texture") GodotMethod!(void, Texture) setNormalTexture;
		@GodotName("set_pressed_texture") GodotMethod!(void, Texture) setPressedTexture;
		@GodotName("set_stretch_mode") GodotMethod!(void, long) setStretchMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in TextureButton other) const
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
	/// Construct a new instance of TextureButton.
	/// Note: use `memnew!TextureButton` instead.
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
		/** */
		stretchScale = 0,
		/** */
		stretchTile = 1,
		/** */
		stretchKeep = 2,
		/** */
		stretchKeepCentered = 3,
		/** */
		stretchKeepAspect = 4,
		/** */
		stretchKeepAspectCentered = 5,
		/** */
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
	/**
	
	*/
	Ref!BitMap getClickMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BitMap)(GDNativeClassBinding.getClickMask, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getDisabledTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getDisabledTexture, _godot_object);
	}
	/**
	
	*/
	bool getExpand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getExpand, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getFocusedTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getFocusedTexture, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getHoverTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getHoverTexture, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getNormalTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getNormalTexture, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getPressedTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getPressedTexture, _godot_object);
	}
	/**
	
	*/
	TextureButton.StretchMode getStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TextureButton.StretchMode)(GDNativeClassBinding.getStretchMode, _godot_object);
	}
	/**
	
	*/
	bool isFlippedH() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFlippedH, _godot_object);
	}
	/**
	
	*/
	bool isFlippedV() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFlippedV, _godot_object);
	}
	/**
	
	*/
	void setClickMask(BitMap mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setClickMask, _godot_object, mask);
	}
	/**
	
	*/
	void setDisabledTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisabledTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setExpand(in bool p_expand)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpand, _godot_object, p_expand);
	}
	/**
	
	*/
	void setFlipH(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlipH, _godot_object, enable);
	}
	/**
	
	*/
	void setFlipV(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlipV, _godot_object, enable);
	}
	/**
	
	*/
	void setFocusedTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFocusedTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setHoverTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHoverTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setNormalTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNormalTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setPressedTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPressedTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setStretchMode(in long p_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStretchMode, _godot_object, p_mode);
	}
	/**
	
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
	
	*/
	@property bool flipH()
	{
		return isFlippedH();
	}
	/// ditto
	@property void flipH(bool v)
	{
		setFlipH(v);
	}
	/**
	
	*/
	@property bool flipV()
	{
		return isFlippedV();
	}
	/// ditto
	@property void flipV(bool v)
	{
		setFlipV(v);
	}
	/**
	
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
	/**
	
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
}
