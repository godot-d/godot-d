/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.container;
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
import godot.control;
/**

*/
@GodotBaseClass struct Container
{
	package(godot) enum string _GODOT_internal_name = "Container";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_child_minsize_changed") GodotMethod!(void) _childMinsizeChanged;
		@GodotName("_sort_children") GodotMethod!(void) _sortChildren;
		@GodotName("fit_child_in_rect") GodotMethod!(void, Control, Rect2) fitChildInRect;
		@GodotName("queue_sort") GodotMethod!(void) queueSort;
	}
	/// 
	pragma(inline, true) bool opEquals(in Container other) const
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
	/// Construct a new instance of Container.
	/// Note: use `memnew!Container` instead.
	static Container _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Container");
		if(constructor is null) return typeof(this).init;
		return cast(Container)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/** */
		notificationSortChildren = 50,
	}
	/**
	
	*/
	void _childMinsizeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_child_minsize_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _sortChildren()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_sort_children");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void fitChildInRect(Control child, in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.fitChildInRect, _godot_object, child, rect);
	}
	/**
	
	*/
	void queueSort()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.queueSort, _godot_object);
	}
}
