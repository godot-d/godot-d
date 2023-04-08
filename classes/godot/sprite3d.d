/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.sprite3d;
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
import godot.spritebase3d;
import godot.texture;
/**

*/
@GodotBaseClass struct Sprite3D
{
	package(godot) enum string _GODOT_internal_name = "Sprite3D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ SpriteBase3D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_frame") GodotMethod!(long) getFrame;
		@GodotName("get_frame_coords") GodotMethod!(Vector2) getFrameCoords;
		@GodotName("get_hframes") GodotMethod!(long) getHframes;
		@GodotName("get_region_rect") GodotMethod!(Rect2) getRegionRect;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("get_vframes") GodotMethod!(long) getVframes;
		@GodotName("is_region") GodotMethod!(bool) isRegion;
		@GodotName("set_frame") GodotMethod!(void, long) setFrame;
		@GodotName("set_frame_coords") GodotMethod!(void, Vector2) setFrameCoords;
		@GodotName("set_hframes") GodotMethod!(void, long) setHframes;
		@GodotName("set_region") GodotMethod!(void, bool) setRegion;
		@GodotName("set_region_rect") GodotMethod!(void, Rect2) setRegionRect;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("set_vframes") GodotMethod!(void, long) setVframes;
	}
	/// 
	pragma(inline, true) bool opEquals(in Sprite3D other) const
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
	/// Construct a new instance of Sprite3D.
	/// Note: use `memnew!Sprite3D` instead.
	static Sprite3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Sprite3D");
		if(constructor is null) return typeof(this).init;
		return cast(Sprite3D)(constructor());
	}
	/**
	
	*/
	long getFrame() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFrame, _godot_object);
	}
	/**
	
	*/
	Vector2 getFrameCoords() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getFrameCoords, _godot_object);
	}
	/**
	
	*/
	long getHframes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getHframes, _godot_object);
	}
	/**
	
	*/
	Rect2 getRegionRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getRegionRect, _godot_object);
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
	long getVframes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVframes, _godot_object);
	}
	/**
	
	*/
	bool isRegion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRegion, _godot_object);
	}
	/**
	
	*/
	void setFrame(in long frame)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrame, _godot_object, frame);
	}
	/**
	
	*/
	void setFrameCoords(in Vector2 coords)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFrameCoords, _godot_object, coords);
	}
	/**
	
	*/
	void setHframes(in long hframes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHframes, _godot_object, hframes);
	}
	/**
	
	*/
	void setRegion(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRegion, _godot_object, enabled);
	}
	/**
	
	*/
	void setRegionRect(in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRegionRect, _godot_object, rect);
	}
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setVframes(in long vframes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVframes, _godot_object, vframes);
	}
	/**
	
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
	
	*/
	@property Vector2 frameCoords()
	{
		return getFrameCoords();
	}
	/// ditto
	@property void frameCoords(Vector2 v)
	{
		setFrameCoords(v);
	}
	/**
	
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
	/**
	
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
}
