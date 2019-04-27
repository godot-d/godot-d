/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.giprobe;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualinstance;
import godot.giprobedata;
import godot.node;
import godot.spatial;
/**

*/
@GodotBaseClass struct GIProbe
{
	enum string _GODOT_internal_name = "GIProbe";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_probe_data") GodotMethod!(void, GIProbeData) setProbeData;
		@GodotName("get_probe_data") GodotMethod!(GIProbeData) getProbeData;
		@GodotName("set_subdiv") GodotMethod!(void, long) setSubdiv;
		@GodotName("get_subdiv") GodotMethod!(GIProbe.Subdiv) getSubdiv;
		@GodotName("set_extents") GodotMethod!(void, Vector3) setExtents;
		@GodotName("get_extents") GodotMethod!(Vector3) getExtents;
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
		@GodotName("bake") GodotMethod!(void, Node, bool) bake;
		@GodotName("debug_bake") GodotMethod!(void) debugBake;
	}
	bool opEquals(in GIProbe other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GIProbe opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GIProbe _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GIProbe");
		if(constructor is null) return typeof(this).init;
		return cast(GIProbe)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Subdiv : int
	{
		/**
		
		*/
		subdiv64 = 0,
		/**
		
		*/
		subdiv128 = 1,
		/**
		
		*/
		subdiv256 = 2,
		/**
		
		*/
		subdiv512 = 3,
		/**
		
		*/
		subdivMax = 4,
	}
	/// 
	enum Constants : int
	{
		subdiv64 = 0,
		subdiv128 = 1,
		subdiv256 = 2,
		subdiv512 = 3,
		subdivMax = 4,
	}
	/**
	
	*/
	void setProbeData(GIProbeData data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setProbeData, _godot_object, data);
	}
	/**
	
	*/
	Ref!GIProbeData getProbeData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GIProbeData)(_classBinding.getProbeData, _godot_object);
	}
	/**
	
	*/
	void setSubdiv(in long subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSubdiv, _godot_object, subdiv);
	}
	/**
	
	*/
	GIProbe.Subdiv getSubdiv() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GIProbe.Subdiv)(_classBinding.getSubdiv, _godot_object);
	}
	/**
	
	*/
	void setExtents(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExtents, _godot_object, extents);
	}
	/**
	
	*/
	Vector3 getExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getExtents, _godot_object);
	}
	/**
	
	*/
	void setDynamicRange(in long max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDynamicRange, _godot_object, max);
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
	void setEnergy(in double max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnergy, _godot_object, max);
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
	void setBias(in double max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBias, _godot_object, max);
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
	void setNormalBias(in double max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNormalBias, _godot_object, max);
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
	void setPropagation(in double max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPropagation, _godot_object, max);
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
	void setInterior(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInterior, _godot_object, enable);
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
	void setCompress(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCompress, _godot_object, enable);
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
	void bake(Node from_node = Node.init, in bool create_visual_debug = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bake, _godot_object, from_node, create_visual_debug);
	}
	/**
	
	*/
	void debugBake()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.debugBake, _godot_object);
	}
	/**
	
	*/
	@property GIProbe.Subdiv subdiv()
	{
		return getSubdiv();
	}
	/// ditto
	@property void subdiv(long v)
	{
		setSubdiv(v);
	}
	/**
	
	*/
	@property Vector3 extents()
	{
		return getExtents();
	}
	/// ditto
	@property void extents(Vector3 v)
	{
		setExtents(v);
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
	/**
	
	*/
	@property GIProbeData data()
	{
		return getProbeData();
	}
	/// ditto
	@property void data(GIProbeData v)
	{
		setProbeData(v);
	}
}
