/**
Control for drawing textures.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.texturerect;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.texture;
/**
Control for drawing textures.

Used to draw icons and sprites in a user interface. The texture's placement can be controlled with the $(D stretchMode) property. It can scale, tile, or stay centered inside its bounding rectangle.
$(B Note:) You should enable $(D flipV) when using a TextureRect to display a $(D ViewportTexture). Alternatively, you can enable $(D Viewport.renderTargetVFlip) on the Viewport. Otherwise, the image will appear upside down.
*/
@GodotBaseClass struct TextureRect
{
	package(godot) enum string _GODOT_internal_name = "TextureRect";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_texture_changed") GodotMethod!(void) _textureChanged;
		@GodotName("get_stretch_mode") GodotMethod!(TextureRect.StretchMode) getStretchMode;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("has_expand") GodotMethod!(bool) hasExpand;
		@GodotName("is_flipped_h") GodotMethod!(bool) isFlippedH;
		@GodotName("is_flipped_v") GodotMethod!(bool) isFlippedV;
		@GodotName("set_expand") GodotMethod!(void, bool) setExpand;
		@GodotName("set_flip_h") GodotMethod!(void, bool) setFlipH;
		@GodotName("set_flip_v") GodotMethod!(void, bool) setFlipV;
		@GodotName("set_stretch_mode") GodotMethod!(void, long) setStretchMode;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
	}
	/// 
	pragma(inline, true) bool opEquals(in TextureRect other) const
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
	/// Construct a new instance of TextureRect.
	/// Note: use `memnew!TextureRect` instead.
	static TextureRect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TextureRect");
		if(constructor is null) return typeof(this).init;
		return cast(TextureRect)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum StretchMode : int
	{
		/**
		Scale to fit the node's bounding rectangle, only if `expand` is `true`. Default `stretch_mode`, for backwards compatibility. Until you set `expand` to `true`, the texture will behave like $(D constant STRETCH_KEEP).
		*/
		stretchScaleOnExpand = 0,
		/**
		Scale to fit the node's bounding rectangle.
		*/
		stretchScale = 1,
		/**
		Tile inside the node's bounding rectangle.
		*/
		stretchTile = 2,
		/**
		The texture keeps its original size and stays in the bounding rectangle's top-left corner.
		*/
		stretchKeep = 3,
		/**
		The texture keeps its original size and stays centered in the node's bounding rectangle.
		*/
		stretchKeepCentered = 4,
		/**
		Scale the texture to fit the node's bounding rectangle, but maintain the texture's aspect ratio.
		*/
		stretchKeepAspect = 5,
		/**
		Scale the texture to fit the node's bounding rectangle, center it and maintain its aspect ratio.
		*/
		stretchKeepAspectCentered = 6,
		/**
		Scale the texture so that the shorter side fits the bounding rectangle. The other side clips to the node's limits.
		*/
		stretchKeepAspectCovered = 7,
	}
	/// 
	enum Constants : int
	{
		stretchScaleOnExpand = 0,
		stretchScale = 1,
		stretchTile = 2,
		stretchKeep = 3,
		stretchKeepCentered = 4,
		stretchKeepAspect = 5,
		stretchKeepAspectCentered = 6,
		stretchKeepAspectCovered = 7,
	}
	/**
	
	*/
	void _textureChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_texture_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	TextureRect.StretchMode getStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TextureRect.StretchMode)(GDNativeClassBinding.getStretchMode, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	bool hasExpand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasExpand, _godot_object);
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
	void setExpand(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpand, _godot_object, enable);
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
	void setStretchMode(in long stretch_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStretchMode, _godot_object, stretch_mode);
	}
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTexture, _godot_object, texture);
	}
	/**
	If `true`, the texture scales to fit its bounding rectangle.
	*/
	@property bool expand()
	{
		return hasExpand();
	}
	/// ditto
	@property void expand(bool v)
	{
		setExpand(v);
	}
	/**
	If `true`, texture is flipped horizontally.
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
	If `true`, texture is flipped vertically.
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
	Controls the texture's behavior when resizing the node's bounding rectangle. See $(D stretchmode).
	*/
	@property TextureRect.StretchMode stretchMode()
	{
		return getStretchMode();
	}
	/// ditto
	@property void stretchMode(long v)
	{
		setStretchMode(v);
	}
	/**
	The node's $(D Texture) resource.
	*/
	@property Texture texture()
	{
		return getTexture();
	}
	/// ditto
	@property void texture(Texture v)
	{
		setTexture(v);
	}
}
