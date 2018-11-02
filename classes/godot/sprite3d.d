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
import godot.geometryinstance;
import godot.visualinstance;
import godot.spatial;
import godot.node;
/**
2D Sprite node in 3D world.

A node that displays a 2D texture in a 3D environment. The texture displayed can be a region from a larger atlas texture, or a frame from a sprite sheet animation.
*/
@GodotBaseClass struct Sprite3D
{
	enum string _GODOT_internal_name = "Sprite3D";
public:
@nogc nothrow:
	union { godot_object _godot_object; SpriteBase3D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("set_region") GodotMethod!(void, bool) setRegion;
		@GodotName("is_region") GodotMethod!(bool) isRegion;
		@GodotName("set_region_rect") GodotMethod!(void, Rect2) setRegionRect;
		@GodotName("get_region_rect") GodotMethod!(Rect2) getRegionRect;
		@GodotName("set_frame") GodotMethod!(void, long) setFrame;
		@GodotName("get_frame") GodotMethod!(long) getFrame;
		@GodotName("set_vframes") GodotMethod!(void, long) setVframes;
		@GodotName("get_vframes") GodotMethod!(long) getVframes;
		@GodotName("set_hframes") GodotMethod!(void, long) setHframes;
		@GodotName("get_hframes") GodotMethod!(long) getHframes;
	}
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
	@disable new(size_t s);
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
	void setRegion(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRegion, _godot_object, enabled);
	}
	/**
	
	*/
	bool isRegion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isRegion, _godot_object);
	}
	/**
	
	*/
	void setRegionRect(in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRegionRect, _godot_object, rect);
	}
	/**
	
	*/
	Rect2 getRegionRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getRegionRect, _godot_object);
	}
	/**
	
	*/
	void setFrame(in long frame)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFrame, _godot_object, frame);
	}
	/**
	
	*/
	long getFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFrame, _godot_object);
	}
	/**
	
	*/
	void setVframes(in long vframes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVframes, _godot_object, vframes);
	}
	/**
	
	*/
	long getVframes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVframes, _godot_object);
	}
	/**
	
	*/
	void setHframes(in long hframes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHframes, _godot_object, hframes);
	}
	/**
	
	*/
	long getHframes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getHframes, _godot_object);
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
