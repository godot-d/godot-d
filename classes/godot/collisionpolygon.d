/**
Editor-only class for defining a collision polygon in 3D space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.collisionpolygon;
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
import godot.spatial;
/**
Editor-only class for defining a collision polygon in 3D space.

Allows editing a collision polygon's vertices on a selected plane. Can also set a depth perpendicular to that plane. This class is only available in the editor. It will not appear in the scene tree at run-time. Creates a $(D Shape) for gameplay. Properties modified during gameplay will have no effect.
*/
@GodotBaseClass struct CollisionPolygon
{
	package(godot) enum string _GODOT_internal_name = "CollisionPolygon";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_is_editable_3d_polygon") GodotMethod!(bool) _isEditable3dPolygon;
		@GodotName("get_depth") GodotMethod!(double) getDepth;
		@GodotName("get_margin") GodotMethod!(double) getMargin;
		@GodotName("get_polygon") GodotMethod!(PoolVector2Array) getPolygon;
		@GodotName("is_disabled") GodotMethod!(bool) isDisabled;
		@GodotName("set_depth") GodotMethod!(void, double) setDepth;
		@GodotName("set_disabled") GodotMethod!(void, bool) setDisabled;
		@GodotName("set_margin") GodotMethod!(void, double) setMargin;
		@GodotName("set_polygon") GodotMethod!(void, PoolVector2Array) setPolygon;
	}
	/// 
	pragma(inline, true) bool opEquals(in CollisionPolygon other) const
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
	/// Construct a new instance of CollisionPolygon.
	/// Note: use `memnew!CollisionPolygon` instead.
	static CollisionPolygon _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CollisionPolygon");
		if(constructor is null) return typeof(this).init;
		return cast(CollisionPolygon)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool _isEditable3dPolygon() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_is_editable_3d_polygon");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	double getDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDepth, _godot_object);
	}
	/**
	
	*/
	double getMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMargin, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getPolygon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getPolygon, _godot_object);
	}
	/**
	
	*/
	bool isDisabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDisabled, _godot_object);
	}
	/**
	
	*/
	void setDepth(in double depth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDepth, _godot_object, depth);
	}
	/**
	
	*/
	void setDisabled(in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisabled, _godot_object, disabled);
	}
	/**
	
	*/
	void setMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMargin, _godot_object, margin);
	}
	/**
	
	*/
	void setPolygon(in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPolygon, _godot_object, polygon);
	}
	/**
	Length that the resulting collision extends in either direction perpendicular to its polygon.
	*/
	@property double depth()
	{
		return getDepth();
	}
	/// ditto
	@property void depth(double v)
	{
		setDepth(v);
	}
	/**
	If `true`, no collision will be produced.
	*/
	@property bool disabled()
	{
		return isDisabled();
	}
	/// ditto
	@property void disabled(bool v)
	{
		setDisabled(v);
	}
	/**
	The collision margin for the generated $(D Shape). See $(D Shape.margin) for more details.
	*/
	@property double margin()
	{
		return getMargin();
	}
	/// ditto
	@property void margin(double v)
	{
		setMargin(v);
	}
	/**
	Array of vertices which define the polygon.
	$(B Note:) The returned value is a copy of the original. Methods which mutate the size or properties of the return value will not impact the original polygon. To change properties of the polygon, assign it to a temporary variable and make changes before reassigning the `polygon` member.
	*/
	@property PoolVector2Array polygon()
	{
		return getPolygon();
	}
	/// ditto
	@property void polygon(PoolVector2Array v)
	{
		setPolygon(v);
	}
}
