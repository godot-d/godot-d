/**
Base class for CSG primitives.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgprimitive;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.csgshape;
/**
Base class for CSG primitives.

Parent class for various CSG primitives. It contains code and functionality that is common between them. It cannot be used directly. Instead use one of the various classes that inherit from it.
*/
@GodotBaseClass struct CSGPrimitive
{
	package(godot) enum string _GODOT_internal_name = "CSGPrimitive";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CSGShape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("is_inverting_faces") GodotMethod!(bool) isInvertingFaces;
		@GodotName("set_invert_faces") GodotMethod!(void, bool) setInvertFaces;
	}
	/// 
	pragma(inline, true) bool opEquals(in CSGPrimitive other) const
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
	/// Construct a new instance of CSGPrimitive.
	/// Note: use `memnew!CSGPrimitive` instead.
	static CSGPrimitive _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CSGPrimitive");
		if(constructor is null) return typeof(this).init;
		return cast(CSGPrimitive)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool isInvertingFaces()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInvertingFaces, _godot_object);
	}
	/**
	
	*/
	void setInvertFaces(in bool invert_faces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInvertFaces, _godot_object, invert_faces);
	}
	/**
	Invert the faces of the mesh.
	*/
	@property bool invertFaces()
	{
		return isInvertingFaces();
	}
	/// ditto
	@property void invertFaces(bool v)
	{
		setInvertFaces(v);
	}
}
