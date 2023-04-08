/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.boxcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.container;
/**

*/
@GodotBaseClass struct BoxContainer
{
	package(godot) enum string _GODOT_internal_name = "BoxContainer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_spacer") GodotMethod!(void, bool) addSpacer;
		@GodotName("get_alignment") GodotMethod!(BoxContainer.AlignMode) getAlignment;
		@GodotName("set_alignment") GodotMethod!(void, long) setAlignment;
	}
	/// 
	pragma(inline, true) bool opEquals(in BoxContainer other) const
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
	/// Construct a new instance of BoxContainer.
	/// Note: use `memnew!BoxContainer` instead.
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
		/** */
		alignBegin = 0,
		/** */
		alignCenter = 1,
		/** */
		alignEnd = 2,
	}
	/// 
	enum Constants : int
	{
		alignBegin = 0,
		alignCenter = 1,
		alignEnd = 2,
	}
	/**
	
	*/
	void addSpacer(in bool begin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSpacer, _godot_object, begin);
	}
	/**
	
	*/
	BoxContainer.AlignMode getAlignment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BoxContainer.AlignMode)(GDNativeClassBinding.getAlignment, _godot_object);
	}
	/**
	
	*/
	void setAlignment(in long alignment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlignment, _godot_object, alignment);
	}
	/**
	
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
