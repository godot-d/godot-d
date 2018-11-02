/**
A CubeMap is a 6 sided 3D texture.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.cubemap;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.image;
import godot.reference;
/**
A CubeMap is a 6 sided 3D texture.

A 6-sided 3D texture typically used for faking reflections. It can be used to make an object look as if it's reflecting its surroundings. This usually delivers much better performance than other reflection methods.
*/
@GodotBaseClass struct CubeMap
{
	enum string _GODOT_internal_name = "CubeMap";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_width") GodotMethod!(long) getWidth;
		@GodotName("get_height") GodotMethod!(long) getHeight;
		@GodotName("set_flags") GodotMethod!(void, long) setFlags;
		@GodotName("get_flags") GodotMethod!(long) getFlags;
		@GodotName("set_side") GodotMethod!(void, long, Image) setSide;
		@GodotName("get_side") GodotMethod!(Image, long) getSide;
		@GodotName("set_storage") GodotMethod!(void, long) setStorage;
		@GodotName("get_storage") GodotMethod!(CubeMap.Storage) getStorage;
		@GodotName("set_lossy_storage_quality") GodotMethod!(void, double) setLossyStorageQuality;
		@GodotName("get_lossy_storage_quality") GodotMethod!(double) getLossyStorageQuality;
	}
	bool opEquals(in CubeMap other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CubeMap opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CubeMap _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CubeMap");
		if(constructor is null) return typeof(this).init;
		return cast(CubeMap)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Flags : int
	{
		/**
		Generate mipmaps, to enable smooth zooming out of the texture.
		*/
		flagMipmaps = 1,
		/**
		Repeat (instead of clamp to edge).
		*/
		flagRepeat = 2,
		/**
		Turn on magnifying filter, to enable smooth zooming in of the texture.
		*/
		flagFilter = 4,
		/**
		Default flags. Generate mipmaps, repeat, and filter are enabled.
		*/
		flagsDefault = 7,
	}
	/// 
	enum Side : int
	{
		/**
		Identifier for the left face of the `CubeMap`.
		*/
		sideLeft = 0,
		/**
		Identifier for the right face of the `CubeMap`.
		*/
		sideRight = 1,
		/**
		Identifier for the bottom face of the `CubeMap`.
		*/
		sideBottom = 2,
		/**
		Identifier for the top face of the `CubeMap`.
		*/
		sideTop = 3,
		/**
		Identifier for the front face of the `CubeMap`.
		*/
		sideFront = 4,
		/**
		Identifier for the back face of the `CubeMap`.
		*/
		sideBack = 5,
	}
	/// 
	enum Storage : int
	{
		/**
		Store the `CubeMap` without any compression.
		*/
		storageRaw = 0,
		/**
		Store the `CubeMap` with strong compression that reduces image quality.
		*/
		storageCompressLossy = 1,
		/**
		Store the `CubeMap` with moderate compression that doesn't reduce image quality.
		*/
		storageCompressLossless = 2,
	}
	/// 
	enum Constants : int
	{
		sideLeft = 0,
		storageRaw = 0,
		sideRight = 1,
		storageCompressLossy = 1,
		flagMipmaps = 1,
		sideBottom = 2,
		storageCompressLossless = 2,
		flagRepeat = 2,
		sideTop = 3,
		flagFilter = 4,
		sideFront = 4,
		sideBack = 5,
		flagsDefault = 7,
	}
	/**
	Returns the `CubeMap`'s width.
	*/
	long getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getWidth, _godot_object);
	}
	/**
	Returns the `CubeMap`'s height.
	*/
	long getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getHeight, _godot_object);
	}
	/**
	
	*/
	void setFlags(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlags, _godot_object, flags);
	}
	/**
	
	*/
	long getFlags() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFlags, _godot_object);
	}
	/**
	Sets an $(D Image) for a side of the `CubeMap` using one of the `SIDE_*` constants or an integer 0-5.
	*/
	void setSide(in long side, Image image)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSide, _godot_object, side, image);
	}
	/**
	Returns an $(D Image) for a side of the `CubeMap` using one of the `SIDE_*` constants or an integer 0-5.
	*/
	Ref!Image getSide(in long side) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(_classBinding.getSide, _godot_object, side);
	}
	/**
	
	*/
	void setStorage(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setStorage, _godot_object, mode);
	}
	/**
	
	*/
	CubeMap.Storage getStorage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CubeMap.Storage)(_classBinding.getStorage, _godot_object);
	}
	/**
	
	*/
	void setLossyStorageQuality(in double quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLossyStorageQuality, _godot_object, quality);
	}
	/**
	
	*/
	double getLossyStorageQuality() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLossyStorageQuality, _godot_object);
	}
	/**
	The render flags for the `CubeMap`. See the `FLAG_*` constants for details.
	*/
	@property long flags()
	{
		return getFlags();
	}
	/// ditto
	@property void flags(long v)
	{
		setFlags(v);
	}
	/**
	The `CubeMap`'s storage mode. See `STORAGE_*` constants.
	*/
	@property CubeMap.Storage storageMode()
	{
		return getStorage();
	}
	/// ditto
	@property void storageMode(long v)
	{
		setStorage(v);
	}
	/**
	The lossy storage quality of the `CubeMap` if the storage mode is set to STORAGE_COMPRESS_LOSSY.
	*/
	@property double lossyStorageQuality()
	{
		return getLossyStorageQuality();
	}
	/// ditto
	@property void lossyStorageQuality(double v)
	{
		setLossyStorageQuality(v);
	}
}
