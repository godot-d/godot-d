/**
Base class for all 3D shape resources.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.shape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
import godot.reference;
import godot.arraymesh;
/**
Base class for all 3D shape resources.

Nodes that inherit from this can be used as shapes for a $(D PhysicsBody) or $(D Area) objects.
*/
@GodotBaseClass struct Shape
{
	package(godot) enum string _GODOT_internal_name = "Shape";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_debug_mesh") GodotMethod!(ArrayMesh) getDebugMesh;
		@GodotName("get_margin") GodotMethod!(double) getMargin;
		@GodotName("set_margin") GodotMethod!(void, double) setMargin;
	}
	/// 
	pragma(inline, true) bool opEquals(in Shape other) const
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
	/// Construct a new instance of Shape.
	/// Note: use `memnew!Shape` instead.
	static Shape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Shape");
		if(constructor is null) return typeof(this).init;
		return cast(Shape)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the $(D ArrayMesh) used to draw the debug collision for this $(D Shape).
	*/
	Ref!ArrayMesh getDebugMesh()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ArrayMesh)(GDNativeClassBinding.getDebugMesh, _godot_object);
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
	void setMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMargin, _godot_object, margin);
	}
	/**
	The collision margin for the shape. Used in Bullet Physics only.
	Collision margins allow collision detection to be more efficient by adding an extra shell around shapes. Collision algorithms are more expensive when objects overlap by more than their margin, so a higher value for margins is better for performance, at the cost of accuracy around edges as it makes them less sharp.
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
}
