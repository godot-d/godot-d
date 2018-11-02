/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.planeshape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct PlaneShape
{
	enum string _GODOT_internal_name = "PlaneShape";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_plane") GodotMethod!(void, Plane) setPlane;
		@GodotName("get_plane") GodotMethod!(Plane) getPlane;
	}
	bool opEquals(in PlaneShape other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PlaneShape opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PlaneShape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PlaneShape");
		if(constructor is null) return typeof(this).init;
		return cast(PlaneShape)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setPlane(in Plane plane)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPlane, _godot_object, plane);
	}
	/**
	
	*/
	Plane getPlane() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Plane)(_classBinding.getPlane, _godot_object);
	}
	/**
	
	*/
	@property Plane plane()
	{
		return getPlane();
	}
	/// ditto
	@property void plane(Plane v)
	{
		setPlane(v);
	}
}
