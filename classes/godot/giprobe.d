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
/**

*/
@GodotBaseClass struct GIProbe
{
	static immutable string _GODOT_internal_name = "GIProbe";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, GIProbeData) _GODOT_set_probe_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_probe_data") = _GODOT_set_probe_data;
	/**
	
	*/
	void setProbeData(GIProbeData data)
	{
		_GODOT_set_probe_data.bind("GIProbe", "set_probe_data");
		ptrcall!(void)(_GODOT_set_probe_data, _godot_object, data);
	}
	package(godot) static GodotMethod!(GIProbeData) _GODOT_get_probe_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_probe_data") = _GODOT_get_probe_data;
	/**
	
	*/
	Ref!GIProbeData getProbeData() const
	{
		_GODOT_get_probe_data.bind("GIProbe", "get_probe_data");
		return ptrcall!(GIProbeData)(_GODOT_get_probe_data, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_subdiv") = _GODOT_set_subdiv;
	/**
	
	*/
	void setSubdiv(in long subdiv)
	{
		_GODOT_set_subdiv.bind("GIProbe", "set_subdiv");
		ptrcall!(void)(_GODOT_set_subdiv, _godot_object, subdiv);
	}
	package(godot) static GodotMethod!(GIProbe.Subdiv) _GODOT_get_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_subdiv") = _GODOT_get_subdiv;
	/**
	
	*/
	GIProbe.Subdiv getSubdiv() const
	{
		_GODOT_get_subdiv.bind("GIProbe", "get_subdiv");
		return ptrcall!(GIProbe.Subdiv)(_GODOT_get_subdiv, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_extents") = _GODOT_set_extents;
	/**
	
	*/
	void setExtents(in Vector3 extents)
	{
		_GODOT_set_extents.bind("GIProbe", "set_extents");
		ptrcall!(void)(_GODOT_set_extents, _godot_object, extents);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_extents") = _GODOT_get_extents;
	/**
	
	*/
	Vector3 getExtents() const
	{
		_GODOT_get_extents.bind("GIProbe", "get_extents");
		return ptrcall!(Vector3)(_GODOT_get_extents, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_dynamic_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dynamic_range") = _GODOT_set_dynamic_range;
	/**
	
	*/
	void setDynamicRange(in long max)
	{
		_GODOT_set_dynamic_range.bind("GIProbe", "set_dynamic_range");
		ptrcall!(void)(_GODOT_set_dynamic_range, _godot_object, max);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_dynamic_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dynamic_range") = _GODOT_get_dynamic_range;
	/**
	
	*/
	long getDynamicRange() const
	{
		_GODOT_get_dynamic_range.bind("GIProbe", "get_dynamic_range");
		return ptrcall!(long)(_GODOT_get_dynamic_range, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_energy") = _GODOT_set_energy;
	/**
	
	*/
	void setEnergy(in double max)
	{
		_GODOT_set_energy.bind("GIProbe", "set_energy");
		ptrcall!(void)(_GODOT_set_energy, _godot_object, max);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_energy") = _GODOT_get_energy;
	/**
	
	*/
	double getEnergy() const
	{
		_GODOT_get_energy.bind("GIProbe", "get_energy");
		return ptrcall!(double)(_GODOT_get_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bias") = _GODOT_set_bias;
	/**
	
	*/
	void setBias(in double max)
	{
		_GODOT_set_bias.bind("GIProbe", "set_bias");
		ptrcall!(void)(_GODOT_set_bias, _godot_object, max);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bias") = _GODOT_get_bias;
	/**
	
	*/
	double getBias() const
	{
		_GODOT_get_bias.bind("GIProbe", "get_bias");
		return ptrcall!(double)(_GODOT_get_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_normal_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal_bias") = _GODOT_set_normal_bias;
	/**
	
	*/
	void setNormalBias(in double max)
	{
		_GODOT_set_normal_bias.bind("GIProbe", "set_normal_bias");
		ptrcall!(void)(_GODOT_set_normal_bias, _godot_object, max);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_normal_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_normal_bias") = _GODOT_get_normal_bias;
	/**
	
	*/
	double getNormalBias() const
	{
		_GODOT_get_normal_bias.bind("GIProbe", "get_normal_bias");
		return ptrcall!(double)(_GODOT_get_normal_bias, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_propagation") = _GODOT_set_propagation;
	/**
	
	*/
	void setPropagation(in double max)
	{
		_GODOT_set_propagation.bind("GIProbe", "set_propagation");
		ptrcall!(void)(_GODOT_set_propagation, _godot_object, max);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_propagation") = _GODOT_get_propagation;
	/**
	
	*/
	double getPropagation() const
	{
		_GODOT_get_propagation.bind("GIProbe", "get_propagation");
		return ptrcall!(double)(_GODOT_get_propagation, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_interior") = _GODOT_set_interior;
	/**
	
	*/
	void setInterior(in bool enable)
	{
		_GODOT_set_interior.bind("GIProbe", "set_interior");
		ptrcall!(void)(_GODOT_set_interior, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_interior") = _GODOT_is_interior;
	/**
	
	*/
	bool isInterior() const
	{
		_GODOT_is_interior.bind("GIProbe", "is_interior");
		return ptrcall!(bool)(_GODOT_is_interior, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_compress;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_compress") = _GODOT_set_compress;
	/**
	
	*/
	void setCompress(in bool enable)
	{
		_GODOT_set_compress.bind("GIProbe", "set_compress");
		ptrcall!(void)(_GODOT_set_compress, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_compressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_compressed") = _GODOT_is_compressed;
	/**
	
	*/
	bool isCompressed() const
	{
		_GODOT_is_compressed.bind("GIProbe", "is_compressed");
		return ptrcall!(bool)(_GODOT_is_compressed, _godot_object);
	}
	package(godot) static GodotMethod!(void, GodotObject, bool) _GODOT_bake;
	package(godot) alias _GODOT_methodBindInfo(string name : "bake") = _GODOT_bake;
	/**
	
	*/
	void bake(GodotObject from_node = GodotObject.init, in bool create_visual_debug = false)
	{
		_GODOT_bake.bind("GIProbe", "bake");
		ptrcall!(void)(_GODOT_bake, _godot_object, from_node, create_visual_debug);
	}
	package(godot) static GodotMethod!(void) _GODOT_debug_bake;
	package(godot) alias _GODOT_methodBindInfo(string name : "debug_bake") = _GODOT_debug_bake;
	/**
	
	*/
	void debugBake()
	{
		_GODOT_debug_bake.bind("GIProbe", "debug_bake");
		ptrcall!(void)(_GODOT_debug_bake, _godot_object);
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
