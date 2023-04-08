/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.position2d;
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
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**

*/
@GodotBaseClass struct Position2D
{
	package(godot) enum string _GODOT_internal_name = "Position2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_gizmo_extents") GodotMethod!(double) _getGizmoExtents;
		@GodotName("_set_gizmo_extents") GodotMethod!(void, double) _setGizmoExtents;
	}
	/// 
	pragma(inline, true) bool opEquals(in Position2D other) const
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
	/// Construct a new instance of Position2D.
	/// Note: use `memnew!Position2D` instead.
	static Position2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Position2D");
		if(constructor is null) return typeof(this).init;
		return cast(Position2D)(constructor());
	}
	/**
	
	*/
	double _getGizmoExtents() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_gizmo_extents");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!double);
	}
	/**
	
	*/
	void _setGizmoExtents(in double extents)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(extents);
		String _GODOT_method_name = String("_set_gizmo_extents");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	@property double gizmoExtents()
	{
		return _getGizmoExtents();
	}
	/// ditto
	@property void gizmoExtents(double v)
	{
		_setGizmoExtents(v);
	}
}
