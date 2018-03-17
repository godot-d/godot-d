/**
Base class for all 2D Shapes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.shape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
/**
Base class for all 2D Shapes.

All 2D shape types inherit from this.
*/
@GodotBaseClass struct Shape2D
{
	static immutable string _GODOT_internal_name = "Shape2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Shape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Shape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Shape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Shape2D");
		if(constructor is null) return typeof(this).init;
		return cast(Shape2D)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_custom_solver_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_custom_solver_bias") = _GODOT_set_custom_solver_bias;
	/**
	
	*/
	void setCustomSolverBias(in double bias)
	{
		_GODOT_set_custom_solver_bias.bind("Shape2D", "set_custom_solver_bias");
		ptrcall!(void)(_GODOT_set_custom_solver_bias, _godot_object, bias);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_custom_solver_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_custom_solver_bias") = _GODOT_get_custom_solver_bias;
	/**
	
	*/
	double getCustomSolverBias() const
	{
		_GODOT_get_custom_solver_bias.bind("Shape2D", "get_custom_solver_bias");
		return ptrcall!(double)(_GODOT_get_custom_solver_bias, _godot_object);
	}
	package(godot) static GodotMethod!(bool, Transform2D, Shape2D, Transform2D) _GODOT_collide;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide") = _GODOT_collide;
	/**
	Return whether this shape is colliding with another.
	This method needs the transformation matrix for this shape (`local_xform`), the shape to check collisions with (`with_shape`), and the transformation matrix of that shape (`shape_xform`).
	*/
	bool collide(in Transform2D local_xform, Shape2D with_shape, in Transform2D shape_xform)
	{
		_GODOT_collide.bind("Shape2D", "collide");
		return ptrcall!(bool)(_GODOT_collide, _godot_object, local_xform, with_shape, shape_xform);
	}
	package(godot) static GodotMethod!(bool, Transform2D, Vector2, Shape2D, Transform2D, Vector2) _GODOT_collide_with_motion;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide_with_motion") = _GODOT_collide_with_motion;
	/**
	Return whether this shape would collide with another, if a given movement was applied.
	This method needs the transformation matrix for this shape (`local_xform`), the movement to test on this shape (`local_motion`), the shape to check collisions with (`with_shape`), the transformation matrix of that shape (`shape_xform`), and the movement to test onto the other object (`shape_motion`).
	*/
	bool collideWithMotion(in Transform2D local_xform, in Vector2 local_motion, Shape2D with_shape, in Transform2D shape_xform, in Vector2 shape_motion)
	{
		_GODOT_collide_with_motion.bind("Shape2D", "collide_with_motion");
		return ptrcall!(bool)(_GODOT_collide_with_motion, _godot_object, local_xform, local_motion, with_shape, shape_xform, shape_motion);
	}
	package(godot) static GodotMethod!(Variant, Transform2D, Shape2D, Transform2D) _GODOT_collide_and_get_contacts;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide_and_get_contacts") = _GODOT_collide_and_get_contacts;
	/**
	Return a list of the points where this shape touches another. If there are no collisions, the list is empty.
	This method needs the transformation matrix for this shape (`local_xform`), the shape to check collisions with (`with_shape`), and the transformation matrix of that shape (`shape_xform`).
	*/
	Variant collideAndGetContacts(in Transform2D local_xform, Shape2D with_shape, in Transform2D shape_xform)
	{
		_GODOT_collide_and_get_contacts.bind("Shape2D", "collide_and_get_contacts");
		return ptrcall!(Variant)(_GODOT_collide_and_get_contacts, _godot_object, local_xform, with_shape, shape_xform);
	}
	package(godot) static GodotMethod!(Variant, Transform2D, Vector2, Shape2D, Transform2D, Vector2) _GODOT_collide_with_motion_and_get_contacts;
	package(godot) alias _GODOT_methodBindInfo(string name : "collide_with_motion_and_get_contacts") = _GODOT_collide_with_motion_and_get_contacts;
	/**
	Return a list of the points where this shape would touch another, if a given movement was applied. If there are no collisions, the list is empty.
	This method needs the transformation matrix for this shape (`local_xform`), the movement to test on this shape (`local_motion`), the shape to check collisions with (`with_shape`), the transformation matrix of that shape (`shape_xform`), and the movement to test onto the other object (`shape_motion`).
	*/
	Variant collideWithMotionAndGetContacts(in Transform2D local_xform, in Vector2 local_motion, Shape2D with_shape, in Transform2D shape_xform, in Vector2 shape_motion)
	{
		_GODOT_collide_with_motion_and_get_contacts.bind("Shape2D", "collide_with_motion_and_get_contacts");
		return ptrcall!(Variant)(_GODOT_collide_with_motion_and_get_contacts, _godot_object, local_xform, local_motion, with_shape, shape_xform, shape_motion);
	}
	/**
	
	*/
	@property double customSolverBias()
	{
		return getCustomSolverBias();
	}
	/// ditto
	@property void customSolverBias(double v)
	{
		setCustomSolverBias(v);
	}
}
