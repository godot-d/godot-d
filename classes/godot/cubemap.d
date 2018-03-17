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
/**
A CubeMap is a 6 sided 3D texture.

A 6-sided 3D texture typically used for faking reflections. It can be used to make an object look as if it's reflecting its surroundings. This usually delivers much better performance than other reflection methods.
*/
@GodotBaseClass struct CubeMap
{
	static immutable string _GODOT_internal_name = "CubeMap";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
		storageRaw = 0,
		sideLeft = 0,
		storageCompressLossy = 1,
		sideRight = 1,
		flagMipmaps = 1,
		storageCompressLossless = 2,
		flagRepeat = 2,
		sideBottom = 2,
		sideTop = 3,
		flagFilter = 4,
		sideFront = 4,
		sideBack = 5,
		flagsDefault = 7,
	}
	package(godot) static GodotMethod!(long) _GODOT_get_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_width") = _GODOT_get_width;
	/**
	Returns the `CubeMap`'s width.
	*/
	long getWidth() const
	{
		_GODOT_get_width.bind("CubeMap", "get_width");
		return ptrcall!(long)(_GODOT_get_width, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_height") = _GODOT_get_height;
	/**
	Returns the `CubeMap`'s height.
	*/
	long getHeight() const
	{
		_GODOT_get_height.bind("CubeMap", "get_height");
		return ptrcall!(long)(_GODOT_get_height, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_flags") = _GODOT_set_flags;
	/**
	
	*/
	void setFlags(in long flags)
	{
		_GODOT_set_flags.bind("CubeMap", "set_flags");
		ptrcall!(void)(_GODOT_set_flags, _godot_object, flags);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_flags") = _GODOT_get_flags;
	/**
	
	*/
	long getFlags() const
	{
		_GODOT_get_flags.bind("CubeMap", "get_flags");
		return ptrcall!(long)(_GODOT_get_flags, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, Image) _GODOT_set_side;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_side") = _GODOT_set_side;
	/**
	Sets an $(D Image) for a side of the `CubeMap` using one of the `SIDE_*` constants or an integer 0-5.
	*/
	void setSide(in long side, Image image)
	{
		_GODOT_set_side.bind("CubeMap", "set_side");
		ptrcall!(void)(_GODOT_set_side, _godot_object, side, image);
	}
	package(godot) static GodotMethod!(Image, long) _GODOT_get_side;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_side") = _GODOT_get_side;
	/**
	Returns an $(D Image) for a side of the `CubeMap` using one of the `SIDE_*` constants or an integer 0-5.
	*/
	Ref!Image getSide(in long side) const
	{
		_GODOT_get_side.bind("CubeMap", "get_side");
		return ptrcall!(Image)(_GODOT_get_side, _godot_object, side);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_storage;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_storage") = _GODOT_set_storage;
	/**
	
	*/
	void setStorage(in long mode)
	{
		_GODOT_set_storage.bind("CubeMap", "set_storage");
		ptrcall!(void)(_GODOT_set_storage, _godot_object, mode);
	}
	package(godot) static GodotMethod!(CubeMap.Storage) _GODOT_get_storage;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_storage") = _GODOT_get_storage;
	/**
	
	*/
	CubeMap.Storage getStorage() const
	{
		_GODOT_get_storage.bind("CubeMap", "get_storage");
		return ptrcall!(CubeMap.Storage)(_GODOT_get_storage, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_lossy_storage_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_lossy_storage_quality") = _GODOT_set_lossy_storage_quality;
	/**
	
	*/
	void setLossyStorageQuality(in double quality)
	{
		_GODOT_set_lossy_storage_quality.bind("CubeMap", "set_lossy_storage_quality");
		ptrcall!(void)(_GODOT_set_lossy_storage_quality, _godot_object, quality);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_lossy_storage_quality;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_lossy_storage_quality") = _GODOT_get_lossy_storage_quality;
	/**
	
	*/
	double getLossyStorageQuality() const
	{
		_GODOT_get_lossy_storage_quality.bind("CubeMap", "get_lossy_storage_quality");
		return ptrcall!(double)(_GODOT_get_lossy_storage_quality, _godot_object);
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
