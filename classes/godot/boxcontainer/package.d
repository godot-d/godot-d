/**
Base class for box containers.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.boxcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.container;
/**
Base class for box containers.

Arranges child controls vertically or horizontally, and rearranges the controls automatically when their minimum size changes.
*/
@GodotBaseClass struct BoxContainer
{
	static immutable string _GODOT_internal_name = "BoxContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in BoxContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BoxContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BoxContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BoxContainer");
		if(constructor is null) return typeof(this).init;
		return cast(BoxContainer)(constructor());
	}
	/// 
	enum AlignMode : int
	{
		/**
		Aligns children with the beginning of the container.
		*/
		alignBegin = 0,
		/**
		Aligns children with the center of the container.
		*/
		alignCenter = 1,
		/**
		Aligns children with the end of the container.
		*/
		alignEnd = 2,
	}
	/// 
	enum Constants : int
	{
		alignBegin = 0,
		alignCenter = 1,
		alignEnd = 2,
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_add_spacer;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_spacer") = _GODOT_add_spacer;
	/**
	Adds a control to the box as a spacer. If `true`, $(I begin) will insert the spacer control in front of other children.
	*/
	void addSpacer(in bool begin)
	{
		_GODOT_add_spacer.bind("BoxContainer", "add_spacer");
		ptrcall!(void)(_GODOT_add_spacer, _godot_object, begin);
	}
	package(godot) static GodotMethod!(BoxContainer.AlignMode) _GODOT_get_alignment;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_alignment") = _GODOT_get_alignment;
	/**
	
	*/
	BoxContainer.AlignMode getAlignment() const
	{
		_GODOT_get_alignment.bind("BoxContainer", "get_alignment");
		return ptrcall!(BoxContainer.AlignMode)(_GODOT_get_alignment, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_alignment;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_alignment") = _GODOT_set_alignment;
	/**
	
	*/
	void setAlignment(in long alignment)
	{
		_GODOT_set_alignment.bind("BoxContainer", "set_alignment");
		ptrcall!(void)(_GODOT_set_alignment, _godot_object, alignment);
	}
	/**
	The alignment of the container's children (must be one of ALIGN_BEGIN, ALIGN_CENTER, or ALIGN_END).
	*/
	@property BoxContainer.AlignMode alignment()
	{
		return getAlignment();
	}
	/// ditto
	@property void alignment(long v)
	{
		setAlignment(v);
	}
}
