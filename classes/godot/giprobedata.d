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
import godot.reference;
/**

*/
@GodotBaseClass struct GIProbeData
{
	enum string _GODOT_internal_name = "GIProbeData";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_bounds") GodotMethod!(void, AABB) setBounds;
		@GodotName("get_bounds") GodotMethod!(AABB) getBounds;
		@GodotName("set_cell_size") GodotMethod!(void, double) setCellSize;
		@GodotName("get_cell_size") GodotMethod!(double) getCellSize;
		@GodotName("set_to_cell_xform") GodotMethod!(void, Transform) setToCellXform;
		@GodotName("get_to_cell_xform") GodotMethod!(Transform) getToCellXform;
		@GodotName("set_dynamic_data") GodotMethod!(void, PoolIntArray) setDynamicData;
		@GodotName("get_dynamic_data") GodotMethod!(PoolIntArray) getDynamicData;
		@GodotName("set_dynamic_range") GodotMethod!(void, long) setDynamicRange;
		@GodotName("get_dynamic_range") GodotMethod!(long) getDynamicRange;
		@GodotName("set_energy") GodotMethod!(void, double) setEnergy;
		@GodotName("get_energy") GodotMethod!(double) getEnergy;
		@GodotName("set_bias") GodotMethod!(void, double) setBias;
		@GodotName("get_bias") GodotMethod!(double) getBias;
		@GodotName("set_normal_bias") GodotMethod!(void, double) setNormalBias;
		@GodotName("get_normal_bias") GodotMethod!(double) getNormalBias;
		@GodotName("set_propagation") GodotMethod!(void, double) setPropagation;
		@GodotName("get_propagation") GodotMethod!(double) getPropagation;
		@GodotName("set_interior") GodotMethod!(void, bool) setInterior;
		@GodotName("is_interior") GodotMethod!(bool) isInterior;
		@GodotName("set_compress") GodotMethod!(void, bool) setCompress;
		@GodotName("is_compressed") GodotMethod!(bool) isCompressed;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void setBounds(in AABB bounds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBounds, _godot_object, bounds);
	}
	/**
	
	*/
	AABB getBounds() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.getBounds, _godot_object);
	}
	/**
	
	*/
	void setCellSize(in double cell_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCellSize, _godot_object, cell_size);
	}
	/**
	
	*/
	double getCellSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getCellSize, _godot_object);
	}
	/**
	
	*/
	void setToCellXform(in Transform to_cell_xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setToCellXform, _godot_object, to_cell_xform);
	}
	/**
	
	*/
	Transform getToCellXform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getToCellXform, _godot_object);
	}
	/**
	
	*/
	void setDynamicData(in PoolIntArray dynamic_data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDynamicData, _godot_object, dynamic_data);
	}
	/**
	
	*/
	PoolIntArray getDynamicData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getDynamicData, _godot_object);
	}
	/**
	
	*/
	void setDynamicRange(in long dynamic_range)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDynamicRange, _godot_object, dynamic_range);
	}
	/**
	
	*/
	long getDynamicRange() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDynamicRange, _godot_object);
	}
	/**
	
	*/
	void setEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnergy, _godot_object, energy);
	}
	/**
	
	*/
	double getEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getEnergy, _godot_object);
	}
	/**
	
	*/
	void setBias(in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBias, _godot_object, bias);
	}
	/**
	
	*/
	double getBias() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBias, _godot_object);
	}
	/**
	
	*/
	void setNormalBias(in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNormalBias, _godot_object, bias);
	}
	/**
	
	*/
	double getNormalBias() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getNormalBias, _godot_object);
	}
	/**
	
	*/
	void setPropagation(in double propagation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPropagation, _godot_object, propagation);
	}
	/**
	
	*/
	double getPropagation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPropagation, _godot_object);
	}
	/**
	
	*/
	void setInterior(in bool interior)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInterior, _godot_object, interior);
	}
	/**
	
	*/
	bool isInterior() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInterior, _godot_object);
	}
	/**
	
	*/
	void setCompress(in bool compress)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCompress, _godot_object, compress);
	}
	/**
	
	*/
	bool isCompressed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCompressed, _godot_object);
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
