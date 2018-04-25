/**
Draws a sprite or a texture inside a User Interface. The texture can tile or not.

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
/**
Draws a sprite or a texture inside a User Interface. The texture can tile or not.

Use TextureRect to draw icons and sprites in your User Interfaces. To create panels and menu boxes, take a look at $(D NinePatchFrame). Its Stretch Mode property controls the texture's scale and placement. It can scale, tile and stay centered inside its bounding rectangle. TextureRect is one of the 5 most common nodes to create game UI.
*/
@GodotBaseClass struct TextureRect
{
	static immutable string _GODOT_internal_name = "TextureRect";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(Texture texture)
	{
		_GODOT_set_texture.bind("TextureRect", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		_GODOT_get_texture.bind("TextureRect", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_expand") = _GODOT_set_expand;
	/**
	
	*/
	void setExpand(in bool enable)
	{
		_GODOT_set_expand.bind("TextureRect", "set_expand");
		ptrcall!(void)(_GODOT_set_expand, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_expand;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_expand") = _GODOT_has_expand;
	/**
	
	*/
	bool hasExpand() const
	{
		_GODOT_has_expand.bind("TextureRect", "has_expand");
		return ptrcall!(bool)(_GODOT_has_expand, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_stretch_mode") = _GODOT_set_stretch_mode;
	/**
	
	*/
	void setStretchMode(in long stretch_mode)
	{
		_GODOT_set_stretch_mode.bind("TextureRect", "set_stretch_mode");
		ptrcall!(void)(_GODOT_set_stretch_mode, _godot_object, stretch_mode);
	}
	package(godot) static GodotMethod!(TextureRect.StretchMode) _GODOT_get_stretch_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stretch_mode") = _GODOT_get_stretch_mode;
	/**
	
	*/
	TextureRect.StretchMode getStretchMode() const
	{
		_GODOT_get_stretch_mode.bind("TextureRect", "get_stretch_mode");
		return ptrcall!(TextureRect.StretchMode)(_GODOT_get_stretch_mode, _godot_object);
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
	If `true`, the texture scales to fit its bounding rectangle. Default value: `false`.
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
	Controls the texture's behavior when you resize the node's bounding rectangle. Set it to one of the `STRETCH_*` constants. See the constants to learn more.
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
