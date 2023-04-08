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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.visualinstance;
import godot.node;
import godot.giprobedata;
/**

*/
@GodotBaseClass struct GIProbe
{
	package(godot) enum string _GODOT_internal_name = "GIProbe";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("bake") GodotMethod!(void, Node, bool) bake;
		@GodotName("debug_bake") GodotMethod!(void) debugBake;
		@GodotName("get_bias") GodotMethod!(double) getBias;
		@GodotName("get_dynamic_range") GodotMethod!(long) getDynamicRange;
		@GodotName("get_energy") GodotMethod!(double) getEnergy;
		@GodotName("get_extents") GodotMethod!(Vector3) getExtents;
		@GodotName("get_normal_bias") GodotMethod!(double) getNormalBias;
		@GodotName("get_probe_data") GodotMethod!(GIProbeData) getProbeData;
		@GodotName("get_propagation") GodotMethod!(double) getPropagation;
		@GodotName("get_subdiv") GodotMethod!(GIProbe.Subdiv) getSubdiv;
		@GodotName("is_compressed") GodotMethod!(bool) isCompressed;
		@GodotName("is_interior") GodotMethod!(bool) isInterior;
		@GodotName("set_bias") GodotMethod!(void, double) setBias;
		@GodotName("set_compress") GodotMethod!(void, bool) setCompress;
		@GodotName("set_dynamic_range") GodotMethod!(void, long) setDynamicRange;
		@GodotName("set_energy") GodotMethod!(void, double) setEnergy;
		@GodotName("set_extents") GodotMethod!(void, Vector3) setExtents;
		@GodotName("set_interior") GodotMethod!(void, bool) setInterior;
		@GodotName("set_normal_bias") GodotMethod!(void, double) setNormalBias;
		@GodotName("set_probe_data") GodotMethod!(void, GIProbeData) setProbeData;
		@GodotName("set_propagation") GodotMethod!(void, double) setPropagation;
		@GodotName("set_subdiv") GodotMethod!(void, long) setSubdiv;
	}
	/// 
	pragma(inline, true) bool opEquals(in GIProbe other) const
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
	/// Construct a new instance of GIProbe.
	/// Note: use `memnew!GIProbe` instead.
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
		/** */
		subdiv64 = 0,
		/** */
		subdiv128 = 1,
		/** */
		subdiv256 = 2,
		/** */
		subdiv512 = 3,
		/** */
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
	void bake(Node from_node = Node.init, in bool create_visual_debug = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bake, _godot_object, from_node, create_visual_debug);
	}
	/**
	
	*/
	void debugBake()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.debugBake, _godot_object);
	}
	/**
	
	*/
	double getBias() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBias, _godot_object);
	}
	/**
	
	*/
	long getDynamicRange() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDynamicRange, _godot_object);
	}
	/**
	
	*/
	double getEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEnergy, _godot_object);
	}
	/**
	
	*/
	Vector3 getExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getExtents, _godot_object);
	}
	/**
	
	*/
	double getNormalBias() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getNormalBias, _godot_object);
	}
	/**
	
	*/
	Ref!GIProbeData getProbeData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GIProbeData)(GDNativeClassBinding.getProbeData, _godot_object);
	}
	/**
	
	*/
	double getPropagation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPropagation, _godot_object);
	}
	/**
	
	*/
	GIProbe.Subdiv getSubdiv() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GIProbe.Subdiv)(GDNativeClassBinding.getSubdiv, _godot_object);
	}
	/**
	
	*/
	bool isCompressed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCompressed, _godot_object);
	}
	/**
	
	*/
	bool isInterior() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInterior, _godot_object);
	}
	/**
	
	*/
	void setBias(in double max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBias, _godot_object, max);
	}
	/**
	
	*/
	void setCompress(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCompress, _godot_object, enable);
	}
	/**
	
	*/
	void setDynamicRange(in long max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDynamicRange, _godot_object, max);
	}
	/**
	
	*/
	void setEnergy(in double max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnergy, _godot_object, max);
	}
	/**
	
	*/
	void setExtents(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExtents, _godot_object, extents);
	}
	/**
	
	*/
	void setInterior(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInterior, _godot_object, enable);
	}
	/**
	
	*/
	void setNormalBias(in double max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNormalBias, _godot_object, max);
	}
	/**
	
	*/
	void setProbeData(GIProbeData data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setProbeData, _godot_object, data);
	}
	/**
	
	*/
	void setPropagation(in double max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPropagation, _godot_object, max);
	}
	/**
	
	*/
	void setSubdiv(in long subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSubdiv, _godot_object, subdiv);
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
	@property GIProbe.Subdiv subdiv()
	{
		return getSubdiv();
	}
	/// ditto
	@property void subdiv(long v)
	{
		setSubdiv(v);
	}
}
