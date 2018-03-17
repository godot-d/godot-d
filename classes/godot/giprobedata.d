/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.giprobedata;
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
/**

*/
@GodotBaseClass struct GIProbeData
{
	static immutable string _GODOT_internal_name = "GIProbeData";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in GIProbeData other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GIProbeData opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GIProbeData _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GIProbeData");
		if(constructor is null) return typeof(this).init;
		return cast(GIProbeData)(constructor());
	}
	package(godot) static GodotMethod!(void, AABB) _GODOT_set_bounds;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bounds") = _GODOT_set_bounds;
	/**
	
	*/
	void setBounds(in AABB bounds)
	{
		_GODOT_set_bounds.bind("GIProbeData", "set_bounds");
		ptrcall!(void)(_GODOT_set_bounds, _godot_object, bounds);
	}
	package(godot) static GodotMethod!(AABB) _GODOT_get_bounds;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bounds") = _GODOT_get_bounds;
	/**
	
	*/
	AABB getBounds() const
	{
		_GODOT_get_bounds.bind("GIProbeData", "get_bounds");
		return ptrcall!(AABB)(_GODOT_get_bounds, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_size") = _GODOT_set_cell_size;
	/**
	
	*/
	void setCellSize(in double cell_size)
	{
		_GODOT_set_cell_size.bind("GIProbeData", "set_cell_size");
		ptrcall!(void)(_GODOT_set_cell_size, _godot_object, cell_size);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_size") = _GODOT_get_cell_size;
	/**
	
	*/
	double getCellSize() const
	{
		_GODOT_get_cell_size.bind("GIProbeData", "get_cell_size");
		return ptrcall!(double)(_GODOT_get_cell_size, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform) _GODOT_set_to_cell_xform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_to_cell_xform") = _GODOT_set_to_cell_xform;
	/**
	
	*/
	void setToCellXform(in Transform to_cell_xform)
	{
		_GODOT_set_to_cell_xform.bind("GIProbeData", "set_to_cell_xform");
		ptrcall!(void)(_GODOT_set_to_cell_xform, _godot_object, to_cell_xform);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_to_cell_xform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_to_cell_xform") = _GODOT_get_to_cell_xform;
	/**
	
	*/
	Transform getToCellXform() const
	{
		_GODOT_get_to_cell_xform.bind("GIProbeData", "get_to_cell_xform");
		return ptrcall!(Transform)(_GODOT_get_to_cell_xform, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT_set_dynamic_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dynamic_data") = _GODOT_set_dynamic_data;
	/**
	
	*/
	void setDynamicData(in PoolIntArray dynamic_data)
	{
		_GODOT_set_dynamic_data.bind("GIProbeData", "set_dynamic_data");
		ptrcall!(void)(_GODOT_set_dynamic_data, _godot_object, dynamic_data);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT_get_dynamic_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dynamic_data") = _GODOT_get_dynamic_data;
	/**
	
	*/
	PoolIntArray getDynamicData() const
	{
		_GODOT_get_dynamic_data.bind("GIProbeData", "get_dynamic_data");
		return ptrcall!(PoolIntArray)(_GODOT_get_dynamic_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_dynamic_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dynamic_range") = _GODOT_set_dynamic_range;
	/**
	
	*/
	void setDynamicRange(in long dynamic_range)
	{
		_GODOT_set_dynamic_range.bind("GIProbeData", "set_dynamic_range");
		ptrcall!(void)(_GODOT_set_dynamic_range, _godot_object, dynamic_range);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_dynamic_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dynamic_range") = _GODOT_get_dynamic_range;
	/**
	
	*/
	long getDynamicRange() const
	{
		_GODOT_get_dynamic_range.bind("GIProbeData", "get_dynamic_range");
		return ptrcall!(long)(_GODOT_get_dynamic_range, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_energy") = _GODOT_set_energy;
	/**
	
	*/
	void setEnergy(in double energy)
	{
		_GODOT_set_energy.bind("GIProbeData", "set_energy");
		ptrcall!(void)(_GODOT_set_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_energy") = _GODOT_get_energy;
	/**
	
	*/
	double getEnergy() const
	{
		_GODOT_get_energy.bind("GIProbeData", "get_energy");
		return ptrcall!(double)(_GODOT_get_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bias") = _GODOT_set_bias;
	/**
	
	*/
	void setBias(in double bias)
	{
		_GODOT_set_bias.bind("GIProbeData", "set_bias");
		ptrcall!(void)(_GODOT_set_bias, _godot_object, bias);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bias") = _GODOT_get_bias;
	/**
	
	*/
	double getBias() const
	{
		_GODOT_get_bias.bind("GIProbeData", "get_bias");
		return ptrcall!(double)(_GODOT_get_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_normal_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_bias") = _GODOT_set_normal_bias;
	/**
	
	*/
	void setNormalBias(in double bias)
	{
		_GODOT_set_normal_bias.bind("GIProbeData", "set_normal_bias");
		ptrcall!(void)(_GODOT_set_normal_bias, _godot_object, bias);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_normal_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_bias") = _GODOT_get_normal_bias;
	/**
	
	*/
	double getNormalBias() const
	{
		_GODOT_get_normal_bias.bind("GIProbeData", "get_normal_bias");
		return ptrcall!(double)(_GODOT_get_normal_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_propagation") = _GODOT_set_propagation;
	/**
	
	*/
	void setPropagation(in double propagation)
	{
		_GODOT_set_propagation.bind("GIProbeData", "set_propagation");
		ptrcall!(void)(_GODOT_set_propagation, _godot_object, propagation);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_propagation") = _GODOT_get_propagation;
	/**
	
	*/
	double getPropagation() const
	{
		_GODOT_get_propagation.bind("GIProbeData", "get_propagation");
		return ptrcall!(double)(_GODOT_get_propagation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_interior") = _GODOT_set_interior;
	/**
	
	*/
	void setInterior(in bool interior)
	{
		_GODOT_set_interior.bind("GIProbeData", "set_interior");
		ptrcall!(void)(_GODOT_set_interior, _godot_object, interior);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_interior") = _GODOT_is_interior;
	/**
	
	*/
	bool isInterior() const
	{
		_GODOT_is_interior.bind("GIProbeData", "is_interior");
		return ptrcall!(bool)(_GODOT_is_interior, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_compress;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_compress") = _GODOT_set_compress;
	/**
	
	*/
	void setCompress(in bool compress)
	{
		_GODOT_set_compress.bind("GIProbeData", "set_compress");
		ptrcall!(void)(_GODOT_set_compress, _godot_object, compress);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_compressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_compressed") = _GODOT_is_compressed;
	/**
	
	*/
	bool isCompressed() const
	{
		_GODOT_is_compressed.bind("GIProbeData", "is_compressed");
		return ptrcall!(bool)(_GODOT_is_compressed, _godot_object);
	}
	/**
	
	*/
	@property AABB bounds()
	{
		return getBounds();
	}
	/// ditto
	@property void bounds(AABB v)
	{
		setBounds(v);
	}
	/**
	
	*/
	@property double cellSize()
	{
		return getCellSize();
	}
	/// ditto
	@property void cellSize(double v)
	{
		setCellSize(v);
	}
	/**
	
	*/
	@property Transform toCellXform()
	{
		return getToCellXform();
	}
	/// ditto
	@property void toCellXform(Transform v)
	{
		setToCellXform(v);
	}
	/**
	
	*/
	@property PoolIntArray dynamicData()
	{
		return getDynamicData();
	}
	/// ditto
	@property void dynamicData(PoolIntArray v)
	{
		setDynamicData(v);
	}
	/**
	
	*/
	@property long dynamicRange()
	{
		return getDynamicRange();
	}
	/// ditto
	@property void dynamicRange(long v)
	{
		setDynamicRange(v);
	}
	/**
	
	*/
	@property double energy()
	{
		return getEnergy();
	}
	/// ditto
	@property void energy(double v)
	{
		setEnergy(v);
	}
	/**
	
	*/
	@property double bias()
	{
		return getBias();
	}
	/// ditto
	@property void bias(double v)
	{
		setBias(v);
	}
	/**
	
	*/
	@property double normalBias()
	{
		return getNormalBias();
	}
	/// ditto
	@property void normalBias(double v)
	{
		setNormalBias(v);
	}
	/**
	
	*/
	@property double propagation()
	{
		return getPropagation();
	}
	/// ditto
	@property void propagation(double v)
	{
		setPropagation(v);
	}
	/**
	
	*/
	@property bool interior()
	{
		return isInterior();
	}
	/// ditto
	@property void interior(bool v)
	{
		setInterior(v);
	}
	/**
	
	*/
	@property bool compress()
	{
		return isCompressed();
	}
	/// ditto
	@property void compress(bool v)
	{
		setCompress(v);
	}
}
