/**
Container for splitting and adjusting.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.splitcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.container;
import godot.inputevent;
/**
Container for splitting and adjusting.

Container for splitting two controls vertically or horizontally, with a grabber that allows adjusting the split offset or ratio.
*/
@GodotBaseClass struct SplitContainer
{
	static immutable string _GODOT_internal_name = "SplitContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in SplitContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SplitContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SplitContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SplitContainer");
		if(constructor is null) return typeof(this).init;
		return cast(SplitContainer)(constructor());
	}
	/// 
	enum DraggerVisibility : int
	{
		/**
		The split dragger is visible.
		*/
		draggerVisible = 0,
		/**
		The split dragger is invisible.
		*/
		draggerHidden = 1,
		/**
		The split dragger is invisible and collapsed.
		*/
		draggerHiddenCollapsed = 2,
	}
	/// 
	enum Constants : int
	{
		draggerVisible = 0,
		draggerHidden = 1,
		draggerHiddenCollapsed = 2,
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__gui_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_gui_input") = _GODOT__gui_input;
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_split_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_split_offset") = _GODOT_set_split_offset;
	/**
	
	*/
	void setSplitOffset(in long offset)
	{
		_GODOT_set_split_offset.bind("SplitContainer", "set_split_offset");
		ptrcall!(void)(_GODOT_set_split_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_split_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_split_offset") = _GODOT_get_split_offset;
	/**
	
	*/
	long getSplitOffset() const
	{
		_GODOT_get_split_offset.bind("SplitContainer", "get_split_offset");
		return ptrcall!(long)(_GODOT_get_split_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_collapsed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_collapsed") = _GODOT_set_collapsed;
	/**
	
	*/
	void setCollapsed(in bool collapsed)
	{
		_GODOT_set_collapsed.bind("SplitContainer", "set_collapsed");
		ptrcall!(void)(_GODOT_set_collapsed, _godot_object, collapsed);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_collapsed;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_collapsed") = _GODOT_is_collapsed;
	/**
	
	*/
	bool isCollapsed() const
	{
		_GODOT_is_collapsed.bind("SplitContainer", "is_collapsed");
		return ptrcall!(bool)(_GODOT_is_collapsed, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_dragger_visibility;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_dragger_visibility") = _GODOT_set_dragger_visibility;
	/**
	
	*/
	void setDraggerVisibility(in long mode)
	{
		_GODOT_set_dragger_visibility.bind("SplitContainer", "set_dragger_visibility");
		ptrcall!(void)(_GODOT_set_dragger_visibility, _godot_object, mode);
	}
	package(godot) static GodotMethod!(SplitContainer.DraggerVisibility) _GODOT_get_dragger_visibility;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_dragger_visibility") = _GODOT_get_dragger_visibility;
	/**
	
	*/
	SplitContainer.DraggerVisibility getDraggerVisibility() const
	{
		_GODOT_get_dragger_visibility.bind("SplitContainer", "get_dragger_visibility");
		return ptrcall!(SplitContainer.DraggerVisibility)(_GODOT_get_dragger_visibility, _godot_object);
	}
	/**
	
	*/
	@property long splitOffset()
	{
		return getSplitOffset();
	}
	/// ditto
	@property void splitOffset(long v)
	{
		setSplitOffset(v);
	}
	/**
	
	*/
	@property bool collapsed()
	{
		return isCollapsed();
	}
	/// ditto
	@property void collapsed(bool v)
	{
		setCollapsed(v);
	}
	/**
	
	*/
	@property SplitContainer.DraggerVisibility draggerVisibility()
	{
		return getDraggerVisibility();
	}
	/// ditto
	@property void draggerVisibility(long v)
	{
		setDraggerVisibility(v);
	}
}
