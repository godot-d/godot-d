/**
Sort all child nodes based on their Y positions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.ysort;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
/**
Sort all child nodes based on their Y positions.

The child node must inherit from $(D CanvasItem) for it to be sorted. Nodes that have a higher Y position will be drawn later, so they will appear on top of nodes that have a lower Y position.
*/
@GodotBaseClass struct YSort
{
	static immutable string _GODOT_internal_name = "YSort";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in YSort other) const { return _godot_object.ptr is other._godot_object.ptr; }
	YSort opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static YSort _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("YSort");
		if(constructor is null) return typeof(this).init;
		return cast(YSort)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, bool) _GODOT_set_sort_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_sort_enabled") = _GODOT_set_sort_enabled;
	/**
	
	*/
	void setSortEnabled(in bool enabled)
	{
		_GODOT_set_sort_enabled.bind("YSort", "set_sort_enabled");
		ptrcall!(void)(_GODOT_set_sort_enabled, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_sort_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_sort_enabled") = _GODOT_is_sort_enabled;
	/**
	
	*/
	bool isSortEnabled() const
	{
		_GODOT_is_sort_enabled.bind("YSort", "is_sort_enabled");
		return ptrcall!(bool)(_GODOT_is_sort_enabled, _godot_object);
	}
	/**
	
	*/
	@property bool sortEnabled()
	{
		return isSortEnabled();
	}
	/// ditto
	@property void sortEnabled(bool v)
	{
		setSortEnabled(v);
	}
}
