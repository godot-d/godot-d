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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
import godot.texture;
import godot.canvasitem;
import godot.node;
/**
Control for drawing textures.

Used to draw icons and sprites in a user interface. The texture's placement can be controlled with the $(D stretchMode) property. It can scale, tile, or stay centered inside its bounding rectangle.
*/
@GodotBaseClass struct TextureRect
{
	enum string _GODOT_internal_name = "TextureRect";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("set_expand") GodotMethod!(void, bool) setExpand;
		@GodotName("has_expand") GodotMethod!(bool) hasExpand;
		@GodotName("set_stretch_mode") GodotMethod!(void, long) setStretchMode;
		@GodotName("get_stretch_mode") GodotMethod!(TextureRect.StretchMode) getStretchMode;
	}
	bool opEquals(in TextureRect other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TextureRect opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		Scale to fit the node's bounding rectangle, only if `expand` is `true`. Default `stretch_mode`, for backwards compatibility. Until you set `expand` to `true`, the texture will behave like `STRETCH_KEEP`.
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
	void setExpand(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExpand, _godot_object, enable);
	}
	/**
	
	*/
	bool hasExpand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasExpand, _godot_object);
	}
	/**
	
	*/
	void setStretchMode(in long stretch_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStretchMode, _godot_object, stretch_mode);
	}
	/**
	
	*/
	TextureRect.StretchMode getStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TextureRect.StretchMode)(_classBinding.getStretchMode, _godot_object);
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
	/**
	If `true` the texture scales to fit its bounding rectangle. Default value: `false`.
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
}
