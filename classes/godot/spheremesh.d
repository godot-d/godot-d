/**
Class representing a spherical $(D PrimitiveMesh).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spheremesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
import godot.mesh;
import godot.resource;
import godot.reference;
/**
Class representing a spherical $(D PrimitiveMesh).


*/
@GodotBaseClass struct SphereMesh
{
	enum string _GODOT_internal_name = "SphereMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_radius") GodotMethod!(void, double) setRadius;
		@GodotName("get_radius") GodotMethod!(double) getRadius;
		@GodotName("set_height") GodotMethod!(void, double) setHeight;
		@GodotName("get_height") GodotMethod!(double) getHeight;
		@GodotName("set_radial_segments") GodotMethod!(void, long) setRadialSegments;
		@GodotName("get_radial_segments") GodotMethod!(long) getRadialSegments;
		@GodotName("set_rings") GodotMethod!(void, long) setRings;
		@GodotName("get_rings") GodotMethod!(long) getRings;
		@GodotName("set_is_hemisphere") GodotMethod!(void, bool) setIsHemisphere;
		@GodotName("get_is_hemisphere") GodotMethod!(bool) getIsHemisphere;
	}
	bool opEquals(in SphereMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SphereMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SphereMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SphereMesh");
		if(constructor is null) return typeof(this).init;
		return cast(SphereMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadius, _godot_object, radius);
	}
	/**
	
	*/
	double getRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRadius, _godot_object);
	}
	/**
	
	*/
	void setHeight(in double height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHeight, _godot_object, height);
	}
	/**
	
	*/
	double getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getHeight, _godot_object);
	}
	/**
	
	*/
	void setRadialSegments(in long radial_segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadialSegments, _godot_object, radial_segments);
	}
	/**
	
	*/
	long getRadialSegments() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRadialSegments, _godot_object);
	}
	/**
	
	*/
	void setRings(in long rings)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRings, _godot_object, rings);
	}
	/**
	
	*/
	long getRings() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRings, _godot_object);
	}
	/**
	
	*/
	void setIsHemisphere(in bool is_hemisphere)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIsHemisphere, _godot_object, is_hemisphere);
	}
	/**
	
	*/
	bool getIsHemisphere() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getIsHemisphere, _godot_object);
	}
	/**
	Radius of sphere. Defaults to 1.0.
	*/
	@property double radius()
	{
		return getRadius();
	}
	/// ditto
	@property void radius(double v)
	{
		setRadius(v);
	}
	/**
	Full height of the sphere. Defaults to 2.0.
	*/
	@property double height()
	{
		return getHeight();
	}
	/// ditto
	@property void height(double v)
	{
		setHeight(v);
	}
	/**
	Number of radial segments on the sphere. Defaults to 64.
	*/
	@property long radialSegments()
	{
		return getRadialSegments();
	}
	/// ditto
	@property void radialSegments(long v)
	{
		setRadialSegments(v);
	}
	/**
	Number of segments along the height of the sphere. Defaults to 32.
	*/
	@property long rings()
	{
		return getRings();
	}
	/// ditto
	@property void rings(long v)
	{
		setRings(v);
	}
	/**
	Determines whether a full sphere or a hemisphere is created. Attention: To get a regular hemisphere the height and radius of the sphere have to equal. Defaults to `false`.
	*/
	@property bool isHemisphere()
	{
		return getIsHemisphere();
	}
	/// ditto
	@property void isHemisphere(bool v)
	{
		setIsHemisphere(v);
	}
}
