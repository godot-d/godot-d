/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.heightmapshape;
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
import godot.shape;
/**

*/
@GodotBaseClass struct HeightMapShape
{
	package(godot) enum string _GODOT_internal_name = "HeightMapShape";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_map_data") GodotMethod!(PoolRealArray) getMapData;
		@GodotName("get_map_depth") GodotMethod!(long) getMapDepth;
		@GodotName("get_map_width") GodotMethod!(long) getMapWidth;
		@GodotName("set_map_data") GodotMethod!(void, PoolRealArray) setMapData;
		@GodotName("set_map_depth") GodotMethod!(void, long) setMapDepth;
		@GodotName("set_map_width") GodotMethod!(void, long) setMapWidth;
	}
	/// 
	pragma(inline, true) bool opEquals(in HeightMapShape other) const
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
	/// Construct a new instance of HeightMapShape.
	/// Note: use `memnew!HeightMapShape` instead.
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
	PoolRealArray getMapData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(GDNativeClassBinding.getMapData, _godot_object);
	}
	/**
	
	*/
	long getMapDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMapDepth, _godot_object);
	}
	/**
	
	*/
	long getMapWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMapWidth, _godot_object);
	}
	/**
	
	*/
	void setMapData(in PoolRealArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMapData, _godot_object, data);
	}
	/**
	
	*/
	void setMapDepth(in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMapDepth, _godot_object, height);
	}
	/**
	
	*/
	void setMapWidth(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMapWidth, _godot_object, width);
	}
	/**
	
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
	/**
	
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
}
