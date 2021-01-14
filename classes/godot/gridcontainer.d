/**
Grid container used to arrange Control-derived children in a grid like layout.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gridcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.container;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Grid container used to arrange Control-derived children in a grid like layout.

GridContainer will arrange its Control-derived children in a grid like structure, the grid columns are specified using the $(D columns) property and the number of rows will be equal to the number of children in the container divided by the number of columns. For example, if the container has 5 children, and 2 columns, there will be 3 rows in the container.
Notice that grid layout will preserve the columns and rows for every size of the container, and that empty columns will be expanded automatically.
$(B Note:) GridContainer only works with child nodes inheriting from Control. It won't rearrange child nodes inheriting from Node2D.
*/
@GodotBaseClass struct GridContainer
{
	package(godot) enum string _GODOT_internal_name = "GridContainer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_columns") GodotMethod!(long) getColumns;
		@GodotName("set_columns") GodotMethod!(void, long) setColumns;
	}
	/// 
	pragma(inline, true) bool opEquals(in GridContainer other) const
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
	/// Construct a new instance of GridContainer.
	/// Note: use `memnew!GridContainer` instead.
	static GridContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GridContainer");
		if(constructor is null) return typeof(this).init;
		return cast(GridContainer)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getColumns() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getColumns, _godot_object);
	}
	/**
	
	*/
	void setColumns(in long columns)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColumns, _godot_object, columns);
	}
	/**
	The number of columns in the $(D GridContainer). If modified, $(D GridContainer) reorders its Control-derived children to accommodate the new layout.
	*/
	@property long columns()
	{
		return getColumns();
	}
	/// ditto
	@property void columns(long v)
	{
		setColumns(v);
	}
}
