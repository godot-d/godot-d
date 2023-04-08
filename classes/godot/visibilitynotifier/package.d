/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visibilitynotifier;
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
import godot.cullinstance;
import godot.spatial;
import godot.node;
/**

*/
@GodotBaseClass struct VisibilityNotifier
{
	package(godot) enum string _GODOT_internal_name = "VisibilityNotifier";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CullInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_aabb") GodotMethod!(AABB) getAabb;
		@GodotName("get_max_distance") GodotMethod!(double) getMaxDistance;
		@GodotName("is_on_screen") GodotMethod!(bool) isOnScreen;
		@GodotName("set_aabb") GodotMethod!(void, AABB) setAabb;
		@GodotName("set_max_distance") GodotMethod!(void, double) setMaxDistance;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisibilityNotifier other) const
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
	/// Construct a new instance of VisibilityNotifier.
	/// Note: use `memnew!VisibilityNotifier` instead.
	static VisibilityNotifier _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisibilityNotifier");
		if(constructor is null) return typeof(this).init;
		return cast(VisibilityNotifier)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	AABB getAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getAabb, _godot_object);
	}
	/**
	
	*/
	double getMaxDistance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMaxDistance, _godot_object);
	}
	/**
	
	*/
	bool isOnScreen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOnScreen, _godot_object);
	}
	/**
	
	*/
	void setAabb(in AABB rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAabb, _godot_object, rect);
	}
	/**
	
	*/
	void setMaxDistance(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxDistance, _godot_object, distance);
	}
	/**
	
	*/
	@property AABB aabb()
	{
		return getAabb();
	}
	/// ditto
	@property void aabb(AABB v)
	{
		setAabb(v);
	}
	/**
	
	*/
	@property double maxDistance()
	{
		return getMaxDistance();
	}
	/// ditto
	@property void maxDistance(double v)
	{
		setMaxDistance(v);
	}
}
