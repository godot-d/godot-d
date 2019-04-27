/**
Height map shape for 3D physics (bullet only)

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.heightmapshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape;
import godot.resource;
import godot.reference;
/**
Height map shape for 3D physics (bullet only)

Height map shape resource, which can be added to a $(D PhysicsBody) or $(D Area).
*/
@GodotBaseClass struct HeightMapShape
{
	enum string _GODOT_internal_name = "HeightMapShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_map_width") GodotMethod!(void, long) setMapWidth;
		@GodotName("get_map_width") GodotMethod!(long) getMapWidth;
		@GodotName("set_map_depth") GodotMethod!(void, long) setMapDepth;
		@GodotName("get_map_depth") GodotMethod!(long) getMapDepth;
		@GodotName("set_map_data") GodotMethod!(void, PoolRealArray) setMapData;
		@GodotName("get_map_data") GodotMethod!(PoolRealArray) getMapData;
	}
	bool opEquals(in HeightMapShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	HeightMapShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static HeightMapShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("HeightMapShape");
		if(constructor is null) return typeof(this).init;
		return cast(HeightMapShape)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setMapWidth(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMapWidth, _godot_object, width);
	}
	/**
	
	*/
	long getMapWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMapWidth, _godot_object);
	}
	/**
	
	*/
	void setMapDepth(in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMapDepth, _godot_object, height);
	}
	/**
	
	*/
	long getMapDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMapDepth, _godot_object);
	}
	/**
	
	*/
	void setMapData(in PoolRealArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMapData, _godot_object, data);
	}
	/**
	
	*/
	PoolRealArray getMapData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(_classBinding.getMapData, _godot_object);
	}
	/**
	Width of the height map data. Changing this will resize the $(D mapData).
	*/
	@property long mapWidth()
	{
		return getMapWidth();
	}
	/// ditto
	@property void mapWidth(long v)
	{
		setMapWidth(v);
	}
	/**
	Depth of the height map data. Changing this will resize the $(D mapData).
	*/
	@property long mapDepth()
	{
		return getMapDepth();
	}
	/// ditto
	@property void mapDepth(long v)
	{
		setMapDepth(v);
	}
	/**
	Height map data, pool array must be of $(D mapWidth) * $(D mapDepth) size.
	*/
	@property PoolRealArray mapData()
	{
		return getMapData();
	}
	/// ditto
	@property void mapData(PoolRealArray v)
	{
		setMapData(v);
	}
}
