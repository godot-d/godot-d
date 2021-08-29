/**
Contains a $(D Curve3D) path for $(D PathFollow) nodes to follow.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.path;
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
import godot.curve3d;
/**
Contains a $(D Curve3D) path for $(D PathFollow) nodes to follow.

Can have $(D PathFollow) child nodes moving along the $(D Curve3D). See $(D PathFollow) for more information on the usage.
Note that the path is considered as relative to the moved nodes (children of $(D PathFollow)). As such, the curve should usually start with a zero vector `(0, 0, 0)`.
*/
@GodotBaseClass struct Path
{
	package(godot) enum string _GODOT_internal_name = "Path";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_curve_changed") GodotMethod!(void) _curveChanged;
		@GodotName("get_curve") GodotMethod!(Curve3D) getCurve;
		@GodotName("set_curve") GodotMethod!(void, Curve3D) setCurve;
	}
	/// 
	pragma(inline, true) bool opEquals(in Path other) const
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
	/// Construct a new instance of Path.
	/// Note: use `memnew!Path` instead.
	static Path _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Path");
		if(constructor is null) return typeof(this).init;
		return cast(Path)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _curveChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_curve_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Ref!Curve3D getCurve() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Curve3D)(GDNativeClassBinding.getCurve, _godot_object);
	}
	/**
	
	*/
	void setCurve(Curve3D curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurve, _godot_object, curve);
	}
	/**
	A $(D Curve3D) describing the path.
	*/
	@property Curve3D curve()
	{
		return getCurve();
	}
	/// ditto
	@property void curve(Curve3D v)
	{
		setCurve(v);
	}
}
