/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.ysort;
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
@GodotBaseClass struct YSort
{
	package(godot) enum string _GODOT_internal_name = "YSort";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("is_sort_enabled") GodotMethod!(bool) isSortEnabled;
		@GodotName("set_sort_enabled") GodotMethod!(void, bool) setSortEnabled;
	}
	/// 
	pragma(inline, true) bool opEquals(in YSort other) const
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
	/// Construct a new instance of YSort.
	/// Note: use `memnew!YSort` instead.
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
	bool isSortEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSortEnabled, _godot_object);
	}
	/**
	
	*/
	void setSortEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSortEnabled, _godot_object, enabled);
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
