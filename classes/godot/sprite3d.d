/**
2D Sprite node in 3D world.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.sprite3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spritebase3d;
import godot.texture;
/**
2D Sprite node in 3D world.

A node that displays a 2D texture in a 3D environment. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.
*/
@GodotBaseClass struct Sprite3D
{
	static immutable string _GODOT_internal_name = "Sprite3D";
public:
@nogc nothrow:
	union { godot_object _godot_object; SpriteBase3D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Sprite3D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Sprite3D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Sprite3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Sprite3D");
		if(constructor is null) return typeof(this).init;
		return cast(Sprite3D)(constructor());
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(Texture texture)
	{
		_GODOT_set_texture.bind("Sprite3D", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		_GODOT_get_texture.bind("Sprite3D", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region") = _GODOT_set_region;
	/**
	
	*/
	void setRegion(in bool enabled)
	{
		_GODOT_set_region.bind("Sprite3D", "set_region");
		ptrcall!(void)(_GODOT_set_region, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_region") = _GODOT_is_region;
	/**
	
	*/
	bool isRegion() const
	{
		_GODOT_is_region.bind("Sprite3D", "is_region");
		return ptrcall!(bool)(_GODOT_is_region, _godot_object);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_set_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_region_rect") = _GODOT_set_region_rect;
	/**
	
	*/
	void setRegionRect(in Rect2 rect)
	{
		_GODOT_set_region_rect.bind("Sprite3D", "set_region_rect");
		ptrcall!(void)(_GODOT_set_region_rect, _godot_object, rect);
	}
	package(godot) static GodotMethod!(Rect2) _GODOT_get_region_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_region_rect") = _GODOT_get_region_rect;
	/**
	
	*/
	Rect2 getRegionRect() const
	{
		_GODOT_get_region_rect.bind("Sprite3D", "get_region_rect");
		return ptrcall!(Rect2)(_GODOT_get_region_rect, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_frame") = _GODOT_set_frame;
	/**
	
	*/
	void setFrame(in long frame)
	{
		_GODOT_set_frame.bind("Sprite3D", "set_frame");
		ptrcall!(void)(_GODOT_set_frame, _godot_object, frame);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_frame;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_frame") = _GODOT_get_frame;
	/**
	
	*/
	long getFrame() const
	{
		_GODOT_get_frame.bind("Sprite3D", "get_frame");
		return ptrcall!(long)(_GODOT_get_frame, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_vframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vframes") = _GODOT_set_vframes;
	/**
	
	*/
	void setVframes(in long vframes)
	{
		_GODOT_set_vframes.bind("Sprite3D", "set_vframes");
		ptrcall!(void)(_GODOT_set_vframes, _godot_object, vframes);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_vframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vframes") = _GODOT_get_vframes;
	/**
	
	*/
	long getVframes() const
	{
		_GODOT_get_vframes.bind("Sprite3D", "get_vframes");
		return ptrcall!(long)(_GODOT_get_vframes, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_hframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_hframes") = _GODOT_set_hframes;
	/**
	
	*/
	void setHframes(in long hframes)
	{
		_GODOT_set_hframes.bind("Sprite3D", "set_hframes");
		ptrcall!(void)(_GODOT_set_hframes, _godot_object, hframes);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_hframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_hframes") = _GODOT_get_hframes;
	/**
	
	*/
	long getHframes() const
	{
		_GODOT_get_hframes.bind("Sprite3D", "get_hframes");
		return ptrcall!(long)(_GODOT_get_hframes, _godot_object);
	}
	/**
	$(D Texture) object to draw.
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
	The number of rows in the sprite sheet.
	*/
	@property long vframes()
	{
		return getVframes();
	}
	/// ditto
	@property void vframes(long v)
	{
		setVframes(v);
	}
	/**
	The number of columns in the sprite sheet.
	*/
	@property long hframes()
	{
		return getHframes();
	}
	/// ditto
	@property void hframes(long v)
	{
		setHframes(v);
	}
	/**
	Current frame to display from sprite sheet. $(D vframes) or $(D hframes) must be greater than 1.
	*/
	@property long frame()
	{
		return getFrame();
	}
	/// ditto
	@property void frame(long v)
	{
		setFrame(v);
	}
	/**
	If `true` texture will be cut from a larger atlas texture. See $(D regionRect). Default value: `false`.
	*/
	@property bool regionEnabled()
	{
		return isRegion();
	}
	/// ditto
	@property void regionEnabled(bool v)
	{
		setRegion(v);
	}
	/**
	The region of the atlas texture to display. $(D regionEnabled) must be `true`.
	*/
	@property Rect2 regionRect()
	{
		return getRegionRect();
	}
	/// ditto
	@property void regionRect(Rect2 v)
	{
		setRegionRect(v);
	}
}
