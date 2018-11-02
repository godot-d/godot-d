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
import godot.canvasitem;
import godot.node;
/**
Sort all child nodes based on their Y positions.

The child node must inherit from $(D CanvasItem) for it to be sorted. Nodes that have a higher Y position will be drawn later, so they will appear on top of nodes that have a lower Y position.
*/
@GodotBaseClass struct YSort
{
	enum string _GODOT_internal_name = "YSort";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_sort_enabled") GodotMethod!(void, bool) setSortEnabled;
		@GodotName("is_sort_enabled") GodotMethod!(bool) isSortEnabled;
	}
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
	/**
	
	*/
	void setSortEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSortEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	bool isSortEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSortEnabled, _godot_object);
	}
	/**
	If `true` child nodes are sorted, otherwise sorting is disabled. Default: `true`.
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
