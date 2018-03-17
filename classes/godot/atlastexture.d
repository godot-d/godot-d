/**
Packs multiple small textures in a single, bigger one. Helps to optimize video memory costs and render calls.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.atlastexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.texture;
/**
Packs multiple small textures in a single, bigger one. Helps to optimize video memory costs and render calls.

$(D Texture) resource aimed at managing big textures files that pack multiple smaller textures. Consists of a $(D Texture), a margin that defines the border width,
and a region that defines the actual area of the AtlasTexture.
*/
@GodotBaseClass struct AtlasTexture
{
	static immutable string _GODOT_internal_name = "AtlasTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in AtlasTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AtlasTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AtlasTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AtlasTexture");
		if(constructor is null) return typeof(this).init;
		return cast(AtlasTexture)(constructor());
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_atlas;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_atlas") = _GODOT_set_atlas;
	/**
	
	*/
	void setAtlas(Texture atlas)
	{
		_GODOT_set_atlas.bind("AtlasTexture", "set_atlas");
		ptrcall!(void)(_GODOT_set_atlas, _godot_object, atlas);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_atlas;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_atlas") = _GODOT_get_atlas;
	/**
	
	*/
	Ref!Texture getAtlas() const
	{
		_GODOT_get_atlas.bind("AtlasTexture", "get_atlas");
		return ptrcall!(Texture)(_GODOT_get_atlas, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region") = _GODOT_set_region;
	/**
	
	*/
	void setRegion(in Rect2 region)
	{
		_GODOT_set_region.bind("AtlasTexture", "set_region");
		ptrcall!(void)(_GODOT_set_region, _godot_object, region);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region") = _GODOT_get_region;
	/**
	
	*/
	Rect2 getRegion() const
	{
		_GODOT_get_region.bind("AtlasTexture", "get_region");
		return ptrcall!(Rect2)(_GODOT_get_region, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_margin") = _GODOT_set_margin;
	/**
	
	*/
	void setMargin(in Rect2 margin)
	{
		_GODOT_set_margin.bind("AtlasTexture", "set_margin");
		ptrcall!(void)(_GODOT_set_margin, _godot_object, margin);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_margin") = _GODOT_get_margin;
	/**
	
	*/
	Rect2 getMargin() const
	{
		_GODOT_get_margin.bind("AtlasTexture", "get_margin");
		return ptrcall!(Rect2)(_GODOT_get_margin, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_filter_clip;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_filter_clip") = _GODOT_set_filter_clip;
	/**
	
	*/
	void setFilterClip(in bool enable)
	{
		_GODOT_set_filter_clip.bind("AtlasTexture", "set_filter_clip");
		ptrcall!(void)(_GODOT_set_filter_clip, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_filter_clip;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_filter_clip") = _GODOT_has_filter_clip;
	/**
	
	*/
	bool hasFilterClip() const
	{
		_GODOT_has_filter_clip.bind("AtlasTexture", "has_filter_clip");
		return ptrcall!(bool)(_GODOT_has_filter_clip, _godot_object);
	}
	/**
	The texture that contains the atlas. Can be any $(D Texture) subtype.
	*/
	@property Texture atlas()
	{
		return getAtlas();
	}
	/// ditto
	@property void atlas(Texture v)
	{
		setAtlas(v);
	}
	/**
	The AtlasTexture's used region.
	*/
	@property Rect2 region()
	{
		return getRegion();
	}
	/// ditto
	@property void region(Rect2 v)
	{
		setRegion(v);
	}
	/**
	The margin around the region. The $(D Rect2)'s 'size' parameter ('w' and 'h' in the editor) resizes the texture so it fits within the margin.
	*/
	@property Rect2 margin()
	{
		return getMargin();
	}
	/// ditto
	@property void margin(Rect2 v)
	{
		setMargin(v);
	}
	/**
	If `true` clips the area outside of the region to avoid bleeding of the surrounding texture pixels.
	*/
	@property bool filterClip()
	{
		return hasFilterClip();
	}
	/// ditto
	@property void filterClip(bool v)
	{
		setFilterClip(v);
	}
}
