/**
Base class for all 2D shapes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.shape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.resource;
import godot.reference;
/**
Base class for all 2D shapes.

All 2D shape types inherit from this.
*/
@GodotBaseClass struct Shape2D
{
	package(godot) enum string _GODOT_internal_name = "Shape2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("collide") GodotMethod!(bool, Transform2D, Shape2D, Transform2D) collide;
		@GodotName("collide_and_get_contacts") GodotMethod!(Array, Transform2D, Shape2D, Transform2D) collideAndGetContacts;
		@GodotName("collide_with_motion") GodotMethod!(bool, Transform2D, Vector2, Shape2D, Transform2D, Vector2) collideWithMotion;
		@GodotName("collide_with_motion_and_get_contacts") GodotMethod!(Array, Transform2D, Vector2, Shape2D, Transform2D, Vector2) collideWithMotionAndGetContacts;
		@GodotName("draw") GodotMethod!(void, RID, Color) draw;
		@GodotName("get_custom_solver_bias") GodotMethod!(double) getCustomSolverBias;
		@GodotName("set_custom_solver_bias") GodotMethod!(void, double) setCustomSolverBias;
	}
	/// 
	pragma(inline, true) bool opEquals(in Shape2D other) const
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
	/// Construct a new instance of Shape2D.
	/// Note: use `memnew!Shape2D` instead.
	static Shape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Shape2D");
		if(constructor is null) return typeof(this).init;
		return cast(Shape2D)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns `true` if this shape is colliding with another.
	This method needs the transformation matrix for this shape (`local_xform`), the shape to check collisions with (`with_shape`), and the transformation matrix of that shape (`shape_xform`).
	*/
	bool collide(in Transform2D local_xform, Shape2D with_shape, in Transform2D shape_xform)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.collide, _godot_object, local_xform, with_shape, shape_xform);
	}
	/**
	Returns a list of the points where this shape touches another. If there are no collisions the list is empty.
	This method needs the transformation matrix for this shape (`local_xform`), the shape to check collisions with (`with_shape`), and the transformation matrix of that shape (`shape_xform`).
	*/
	Array collideAndGetContacts(in Transform2D local_xform, Shape2D with_shape, in Transform2D shape_xform)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.collideAndGetContacts, _godot_object, local_xform, with_shape, shape_xform);
	}
	/**
	Returns whether this shape would collide with another, if a given movement was applied.
	This method needs the transformation matrix for this shape (`local_xform`), the movement to test on this shape (`local_motion`), the shape to check collisions with (`with_shape`), the transformation matrix of that shape (`shape_xform`), and the movement to test onto the other object (`shape_motion`).
	*/
	bool collideWithMotion(in Transform2D local_xform, in Vector2 local_motion, Shape2D with_shape, in Transform2D shape_xform, in Vector2 shape_motion)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.collideWithMotion, _godot_object, local_xform, local_motion, with_shape, shape_xform, shape_motion);
	}
	/**
	Returns a list of the points where this shape would touch another, if a given movement was applied. If there are no collisions the list is empty.
	This method needs the transformation matrix for this shape (`local_xform`), the movement to test on this shape (`local_motion`), the shape to check collisions with (`with_shape`), the transformation matrix of that shape (`shape_xform`), and the movement to test onto the other object (`shape_motion`).
	*/
	Array collideWithMotionAndGetContacts(in Transform2D local_xform, in Vector2 local_motion, Shape2D with_shape, in Transform2D shape_xform, in Vector2 shape_motion)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.collideWithMotionAndGetContacts, _godot_object, local_xform, local_motion, with_shape, shape_xform, shape_motion);
	}
	/**
	Draws a solid shape onto a $(D CanvasItem) with the $(D VisualServer) API filled with the specified `color`. The exact drawing method is specific for each shape and cannot be configured.
	*/
	void draw(in RID canvas_item, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.draw, _godot_object, canvas_item, color);
	}
	/**
	
	*/
	double getCustomSolverBias() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCustomSolverBias, _godot_object);
	}
	/**
	
	*/
	void setCustomSolverBias(in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCustomSolverBias, _godot_object, bias);
	}
	/**
	The shape's custom solver bias.
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
