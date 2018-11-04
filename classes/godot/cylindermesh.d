/**
Class representing a cylindrical $(D PrimitiveMesh).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.cylindermesh;
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
Class representing a cylindrical $(D PrimitiveMesh).


*/
@GodotBaseClass struct CylinderMesh
{
	enum string _GODOT_internal_name = "CylinderMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_top_radius") GodotMethod!(void, double) setTopRadius;
		@GodotName("get_top_radius") GodotMethod!(double) getTopRadius;
		@GodotName("set_bottom_radius") GodotMethod!(void, double) setBottomRadius;
		@GodotName("get_bottom_radius") GodotMethod!(double) getBottomRadius;
		@GodotName("set_height") GodotMethod!(void, double) setHeight;
		@GodotName("get_height") GodotMethod!(double) getHeight;
		@GodotName("set_radial_segments") GodotMethod!(void, long) setRadialSegments;
		@GodotName("get_radial_segments") GodotMethod!(long) getRadialSegments;
		@GodotName("set_rings") GodotMethod!(void, long) setRings;
		@GodotName("get_rings") GodotMethod!(long) getRings;
	}
	bool opEquals(in CylinderMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CylinderMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CylinderMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CylinderMesh");
		if(constructor is null) return typeof(this).init;
		return cast(CylinderMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setTopRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTopRadius, _godot_object, radius);
	}
	/**
	
	*/
	double getTopRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTopRadius, _godot_object);
	}
	/**
	
	*/
	void setBottomRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBottomRadius, _godot_object, radius);
	}
	/**
	
	*/
	double getBottomRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getBottomRadius, _godot_object);
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
	void setRadialSegments(in long segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRadialSegments, _godot_object, segments);
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
	Top radius of the cylinder. Defaults to 1.0.
	*/
	@property double topRadius()
	{
		return getTopRadius();
	}
	/// ditto
	@property void topRadius(double v)
	{
		setTopRadius(v);
	}
	/**
	Bottom radius of the cylinder. Defaults to 1.0.
	*/
	@property double bottomRadius()
	{
		return getBottomRadius();
	}
	/// ditto
	@property void bottomRadius(double v)
	{
		setBottomRadius(v);
	}
	/**
	Full height of the cylinder. Defaults to 2.0.
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
	Number of radial segments on the cylinder. Defaults to 64.
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
	Number of edge rings along the height of the cylinder. Defaults to 4.
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
}