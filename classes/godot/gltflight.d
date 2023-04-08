/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gltflight;
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
import godot.resource;
/**

*/
@GodotBaseClass struct GLTFLight
{
	package(godot) enum string _GODOT_internal_name = "GLTFLight";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("get_inner_cone_angle") GodotMethod!(double) getInnerConeAngle;
		@GodotName("get_intensity") GodotMethod!(double) getIntensity;
		@GodotName("get_outer_cone_angle") GodotMethod!(double) getOuterConeAngle;
		@GodotName("get_range") GodotMethod!(double) getRange;
		@GodotName("get_type") GodotMethod!(String) getType;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("set_inner_cone_angle") GodotMethod!(void, double) setInnerConeAngle;
		@GodotName("set_intensity") GodotMethod!(void, double) setIntensity;
		@GodotName("set_outer_cone_angle") GodotMethod!(void, double) setOuterConeAngle;
		@GodotName("set_range") GodotMethod!(void, double) setRange;
		@GodotName("set_type") GodotMethod!(void, String) setType;
	}
	/// 
	pragma(inline, true) bool opEquals(in GLTFLight other) const
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
	/// Construct a new instance of GLTFLight.
	/// Note: use `memnew!GLTFLight` instead.
	static GLTFLight _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GLTFLight");
		if(constructor is null) return typeof(this).init;
		return cast(GLTFLight)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Color getColor()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object);
	}
	/**
	
	*/
	double getInnerConeAngle()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getInnerConeAngle, _godot_object);
	}
	/**
	
	*/
	double getIntensity()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getIntensity, _godot_object);
	}
	/**
	
	*/
	double getOuterConeAngle()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getOuterConeAngle, _godot_object);
	}
	/**
	
	*/
	double getRange()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRange, _godot_object);
	}
	/**
	
	*/
	String getType()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getType, _godot_object);
	}
	/**
	
	*/
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	void setInnerConeAngle(in double inner_cone_angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInnerConeAngle, _godot_object, inner_cone_angle);
	}
	/**
	
	*/
	void setIntensity(in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIntensity, _godot_object, intensity);
	}
	/**
	
	*/
	void setOuterConeAngle(in double outer_cone_angle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOuterConeAngle, _godot_object, outer_cone_angle);
	}
	/**
	
	*/
	void setRange(in double range)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRange, _godot_object, range);
	}
	/**
	
	*/
	void setType(in String type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setType, _godot_object, type);
	}
	/**
	
	*/
	@property Color color()
	{
		return getColor();
	}
	/// ditto
	@property void color(Color v)
	{
		setColor(v);
	}
	/**
	
	*/
	@property double innerConeAngle()
	{
		return getInnerConeAngle();
	}
	/// ditto
	@property void innerConeAngle(double v)
	{
		setInnerConeAngle(v);
	}
	/**
	
	*/
	@property double intensity()
	{
		return getIntensity();
	}
	/// ditto
	@property void intensity(double v)
	{
		setIntensity(v);
	}
	/**
	
	*/
	@property double outerConeAngle()
	{
		return getOuterConeAngle();
	}
	/// ditto
	@property void outerConeAngle(double v)
	{
		setOuterConeAngle(v);
	}
	/**
	
	*/
	@property double range()
	{
		return getRange();
	}
	/// ditto
	@property void range(double v)
	{
		setRange(v);
	}
	/**
	
	*/
	@property String type()
	{
		return getType();
	}
	/// ditto
	@property void type(String v)
	{
		setType(v);
	}
}
