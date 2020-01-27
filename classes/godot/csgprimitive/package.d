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
import godot.d.meta;
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
	enum string _GODOT_internal_name = "CSGPrimitive";
public:
@nogc nothrow:
	union { godot_object _godot_object; CSGShape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("is_inverting_faces") GodotMethod!(bool) isInvertingFaces;
		@GodotName("set_invert_faces") GodotMethod!(void, bool) setInvertFaces;
	}
	bool opEquals(in CSGPrimitive other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CSGPrimitive opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		return ptrcall!(bool)(_classBinding.isInvertingFaces, _godot_object);
	}
	/**
	
	*/
	void setInvertFaces(in bool invert_faces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInvertFaces, _godot_object, invert_faces);
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
