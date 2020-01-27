/**
Base node for containers.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.container;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
/**
Base node for containers.

A $(D Container) contains other controls and automatically arranges them in a certain way.
A Control can inherit this to create custom container classes.
*/
@GodotBaseClass struct Container
{
	enum string _GODOT_internal_name = "Container";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_child_minsize_changed") GodotMethod!(void) _childMinsizeChanged;
		@GodotName("_sort_children") GodotMethod!(void) _sortChildren;
		@GodotName("fit_child_in_rect") GodotMethod!(void, Control, Rect2) fitChildInRect;
		@GodotName("queue_sort") GodotMethod!(void) queueSort;
	}
	bool opEquals(in Container other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Container opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		/**
		Notification for when sorting the children, it must be obeyed immediately.
		*/
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
	Fit a child control in a given rect. This is mainly a helper for creating custom container classes.
	*/
	void fitChildInRect(Control child, in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.fitChildInRect, _godot_object, child, rect);
	}
	/**
	Queue resort of the contained children. This is called automatically anyway, but can be called upon request.
	*/
	void queueSort()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.queueSort, _godot_object);
	}
}
