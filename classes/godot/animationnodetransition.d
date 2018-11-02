/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodetransition;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.animationnode;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct AnimationNodeTransition
{
	enum string _GODOT_internal_name = "AnimationNodeTransition";
public:
@nogc nothrow:
	union { godot_object _godot_object; AnimationNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_enabled_inputs") GodotMethod!(void, long) setEnabledInputs;
		@GodotName("get_enabled_inputs") GodotMethod!(long) getEnabledInputs;
		@GodotName("set_input_as_auto_advance") GodotMethod!(void, long, bool) setInputAsAutoAdvance;
		@GodotName("is_input_set_as_auto_advance") GodotMethod!(bool, long) isInputSetAsAutoAdvance;
		@GodotName("set_input_caption") GodotMethod!(void, long, String) setInputCaption;
		@GodotName("get_input_caption") GodotMethod!(String, long) getInputCaption;
		@GodotName("set_cross_fade_time") GodotMethod!(void, double) setCrossFadeTime;
		@GodotName("get_cross_fade_time") GodotMethod!(double) getCrossFadeTime;
	}
	bool opEquals(in AnimationNodeTransition other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationNodeTransition opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimationNodeTransition _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeTransition");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeTransition)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setEnabledInputs(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnabledInputs, _godot_object, amount);
	}
	/**
	
	*/
	long getEnabledInputs()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getEnabledInputs, _godot_object);
	}
	/**
	
	*/
	void setInputAsAutoAdvance(in long input, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInputAsAutoAdvance, _godot_object, input, enable);
	}
	/**
	
	*/
	bool isInputSetAsAutoAdvance(in long input) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isInputSetAsAutoAdvance, _godot_object, input);
	}
	/**
	
	*/
	void setInputCaption(StringArg1)(in long input, in StringArg1 caption)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInputCaption, _godot_object, input, caption);
	}
	/**
	
	*/
	String getInputCaption(in long input) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getInputCaption, _godot_object, input);
	}
	/**
	
	*/
	void setCrossFadeTime(in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCrossFadeTime, _godot_object, time);
	}
	/**
	
	*/
	double getCrossFadeTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getCrossFadeTime, _godot_object);
	}
	/**
	
	*/
	@property long inputCount()
	{
		return getEnabledInputs();
	}
	/// ditto
	@property void inputCount(long v)
	{
		setEnabledInputs(v);
	}
	/**
	
	*/
	@property double xfadeTime()
	{
		return getCrossFadeTime();
	}
	/// ditto
	@property void xfadeTime(double v)
	{
		setCrossFadeTime(v);
	}
	/**
	
	*/
	@property String input0Name()
	{
		return getInputCaption(0);
	}
	/// ditto
	@property void input0Name(String v)
	{
		setInputCaption(0, v);
	}
	/**
	
	*/
	@property bool input0AutoAdvance()
	{
		return isInputSetAsAutoAdvance(0);
	}
	/// ditto
	@property void input0AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(0, v);
	}
	/**
	
	*/
	@property String input1Name()
	{
		return getInputCaption(1);
	}
	/// ditto
	@property void input1Name(String v)
	{
		setInputCaption(1, v);
	}
	/**
	
	*/
	@property bool input1AutoAdvance()
	{
		return isInputSetAsAutoAdvance(1);
	}
	/// ditto
	@property void input1AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(1, v);
	}
	/**
	
	*/
	@property String input2Name()
	{
		return getInputCaption(2);
	}
	/// ditto
	@property void input2Name(String v)
	{
		setInputCaption(2, v);
	}
	/**
	
	*/
	@property bool input2AutoAdvance()
	{
		return isInputSetAsAutoAdvance(2);
	}
	/// ditto
	@property void input2AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(2, v);
	}
	/**
	
	*/
	@property String input3Name()
	{
		return getInputCaption(3);
	}
	/// ditto
	@property void input3Name(String v)
	{
		setInputCaption(3, v);
	}
	/**
	
	*/
	@property bool input3AutoAdvance()
	{
		return isInputSetAsAutoAdvance(3);
	}
	/// ditto
	@property void input3AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(3, v);
	}
	/**
	
	*/
	@property String input4Name()
	{
		return getInputCaption(4);
	}
	/// ditto
	@property void input4Name(String v)
	{
		setInputCaption(4, v);
	}
	/**
	
	*/
	@property bool input4AutoAdvance()
	{
		return isInputSetAsAutoAdvance(4);
	}
	/// ditto
	@property void input4AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(4, v);
	}
	/**
	
	*/
	@property String input5Name()
	{
		return getInputCaption(5);
	}
	/// ditto
	@property void input5Name(String v)
	{
		setInputCaption(5, v);
	}
	/**
	
	*/
	@property bool input5AutoAdvance()
	{
		return isInputSetAsAutoAdvance(5);
	}
	/// ditto
	@property void input5AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(5, v);
	}
	/**
	
	*/
	@property String input6Name()
	{
		return getInputCaption(6);
	}
	/// ditto
	@property void input6Name(String v)
	{
		setInputCaption(6, v);
	}
	/**
	
	*/
	@property bool input6AutoAdvance()
	{
		return isInputSetAsAutoAdvance(6);
	}
	/// ditto
	@property void input6AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(6, v);
	}
	/**
	
	*/
	@property String input7Name()
	{
		return getInputCaption(7);
	}
	/// ditto
	@property void input7Name(String v)
	{
		setInputCaption(7, v);
	}
	/**
	
	*/
	@property bool input7AutoAdvance()
	{
		return isInputSetAsAutoAdvance(7);
	}
	/// ditto
	@property void input7AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(7, v);
	}
	/**
	
	*/
	@property String input8Name()
	{
		return getInputCaption(8);
	}
	/// ditto
	@property void input8Name(String v)
	{
		setInputCaption(8, v);
	}
	/**
	
	*/
	@property bool input8AutoAdvance()
	{
		return isInputSetAsAutoAdvance(8);
	}
	/// ditto
	@property void input8AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(8, v);
	}
	/**
	
	*/
	@property String input9Name()
	{
		return getInputCaption(9);
	}
	/// ditto
	@property void input9Name(String v)
	{
		setInputCaption(9, v);
	}
	/**
	
	*/
	@property bool input9AutoAdvance()
	{
		return isInputSetAsAutoAdvance(9);
	}
	/// ditto
	@property void input9AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(9, v);
	}
	/**
	
	*/
	@property String input10Name()
	{
		return getInputCaption(10);
	}
	/// ditto
	@property void input10Name(String v)
	{
		setInputCaption(10, v);
	}
	/**
	
	*/
	@property bool input10AutoAdvance()
	{
		return isInputSetAsAutoAdvance(10);
	}
	/// ditto
	@property void input10AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(10, v);
	}
	/**
	
	*/
	@property String input11Name()
	{
		return getInputCaption(11);
	}
	/// ditto
	@property void input11Name(String v)
	{
		setInputCaption(11, v);
	}
	/**
	
	*/
	@property bool input11AutoAdvance()
	{
		return isInputSetAsAutoAdvance(11);
	}
	/// ditto
	@property void input11AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(11, v);
	}
	/**
	
	*/
	@property String input12Name()
	{
		return getInputCaption(12);
	}
	/// ditto
	@property void input12Name(String v)
	{
		setInputCaption(12, v);
	}
	/**
	
	*/
	@property bool input12AutoAdvance()
	{
		return isInputSetAsAutoAdvance(12);
	}
	/// ditto
	@property void input12AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(12, v);
	}
	/**
	
	*/
	@property String input13Name()
	{
		return getInputCaption(13);
	}
	/// ditto
	@property void input13Name(String v)
	{
		setInputCaption(13, v);
	}
	/**
	
	*/
	@property bool input13AutoAdvance()
	{
		return isInputSetAsAutoAdvance(13);
	}
	/// ditto
	@property void input13AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(13, v);
	}
	/**
	
	*/
	@property String input14Name()
	{
		return getInputCaption(14);
	}
	/// ditto
	@property void input14Name(String v)
	{
		setInputCaption(14, v);
	}
	/**
	
	*/
	@property bool input14AutoAdvance()
	{
		return isInputSetAsAutoAdvance(14);
	}
	/// ditto
	@property void input14AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(14, v);
	}
	/**
	
	*/
	@property String input15Name()
	{
		return getInputCaption(15);
	}
	/// ditto
	@property void input15Name(String v)
	{
		setInputCaption(15, v);
	}
	/**
	
	*/
	@property bool input15AutoAdvance()
	{
		return isInputSetAsAutoAdvance(15);
	}
	/// ditto
	@property void input15AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(15, v);
	}
	/**
	
	*/
	@property String input16Name()
	{
		return getInputCaption(16);
	}
	/// ditto
	@property void input16Name(String v)
	{
		setInputCaption(16, v);
	}
	/**
	
	*/
	@property bool input16AutoAdvance()
	{
		return isInputSetAsAutoAdvance(16);
	}
	/// ditto
	@property void input16AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(16, v);
	}
	/**
	
	*/
	@property String input17Name()
	{
		return getInputCaption(17);
	}
	/// ditto
	@property void input17Name(String v)
	{
		setInputCaption(17, v);
	}
	/**
	
	*/
	@property bool input17AutoAdvance()
	{
		return isInputSetAsAutoAdvance(17);
	}
	/// ditto
	@property void input17AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(17, v);
	}
	/**
	
	*/
	@property String input18Name()
	{
		return getInputCaption(18);
	}
	/// ditto
	@property void input18Name(String v)
	{
		setInputCaption(18, v);
	}
	/**
	
	*/
	@property bool input18AutoAdvance()
	{
		return isInputSetAsAutoAdvance(18);
	}
	/// ditto
	@property void input18AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(18, v);
	}
	/**
	
	*/
	@property String input19Name()
	{
		return getInputCaption(19);
	}
	/// ditto
	@property void input19Name(String v)
	{
		setInputCaption(19, v);
	}
	/**
	
	*/
	@property bool input19AutoAdvance()
	{
		return isInputSetAsAutoAdvance(19);
	}
	/// ditto
	@property void input19AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(19, v);
	}
	/**
	
	*/
	@property String input20Name()
	{
		return getInputCaption(20);
	}
	/// ditto
	@property void input20Name(String v)
	{
		setInputCaption(20, v);
	}
	/**
	
	*/
	@property bool input20AutoAdvance()
	{
		return isInputSetAsAutoAdvance(20);
	}
	/// ditto
	@property void input20AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(20, v);
	}
	/**
	
	*/
	@property String input21Name()
	{
		return getInputCaption(21);
	}
	/// ditto
	@property void input21Name(String v)
	{
		setInputCaption(21, v);
	}
	/**
	
	*/
	@property bool input21AutoAdvance()
	{
		return isInputSetAsAutoAdvance(21);
	}
	/// ditto
	@property void input21AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(21, v);
	}
	/**
	
	*/
	@property String input22Name()
	{
		return getInputCaption(22);
	}
	/// ditto
	@property void input22Name(String v)
	{
		setInputCaption(22, v);
	}
	/**
	
	*/
	@property bool input22AutoAdvance()
	{
		return isInputSetAsAutoAdvance(22);
	}
	/// ditto
	@property void input22AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(22, v);
	}
	/**
	
	*/
	@property String input23Name()
	{
		return getInputCaption(23);
	}
	/// ditto
	@property void input23Name(String v)
	{
		setInputCaption(23, v);
	}
	/**
	
	*/
	@property bool input23AutoAdvance()
	{
		return isInputSetAsAutoAdvance(23);
	}
	/// ditto
	@property void input23AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(23, v);
	}
	/**
	
	*/
	@property String input24Name()
	{
		return getInputCaption(24);
	}
	/// ditto
	@property void input24Name(String v)
	{
		setInputCaption(24, v);
	}
	/**
	
	*/
	@property bool input24AutoAdvance()
	{
		return isInputSetAsAutoAdvance(24);
	}
	/// ditto
	@property void input24AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(24, v);
	}
	/**
	
	*/
	@property String input25Name()
	{
		return getInputCaption(25);
	}
	/// ditto
	@property void input25Name(String v)
	{
		setInputCaption(25, v);
	}
	/**
	
	*/
	@property bool input25AutoAdvance()
	{
		return isInputSetAsAutoAdvance(25);
	}
	/// ditto
	@property void input25AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(25, v);
	}
	/**
	
	*/
	@property String input26Name()
	{
		return getInputCaption(26);
	}
	/// ditto
	@property void input26Name(String v)
	{
		setInputCaption(26, v);
	}
	/**
	
	*/
	@property bool input26AutoAdvance()
	{
		return isInputSetAsAutoAdvance(26);
	}
	/// ditto
	@property void input26AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(26, v);
	}
	/**
	
	*/
	@property String input27Name()
	{
		return getInputCaption(27);
	}
	/// ditto
	@property void input27Name(String v)
	{
		setInputCaption(27, v);
	}
	/**
	
	*/
	@property bool input27AutoAdvance()
	{
		return isInputSetAsAutoAdvance(27);
	}
	/// ditto
	@property void input27AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(27, v);
	}
	/**
	
	*/
	@property String input28Name()
	{
		return getInputCaption(28);
	}
	/// ditto
	@property void input28Name(String v)
	{
		setInputCaption(28, v);
	}
	/**
	
	*/
	@property bool input28AutoAdvance()
	{
		return isInputSetAsAutoAdvance(28);
	}
	/// ditto
	@property void input28AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(28, v);
	}
	/**
	
	*/
	@property String input29Name()
	{
		return getInputCaption(29);
	}
	/// ditto
	@property void input29Name(String v)
	{
		setInputCaption(29, v);
	}
	/**
	
	*/
	@property bool input29AutoAdvance()
	{
		return isInputSetAsAutoAdvance(29);
	}
	/// ditto
	@property void input29AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(29, v);
	}
	/**
	
	*/
	@property String input30Name()
	{
		return getInputCaption(30);
	}
	/// ditto
	@property void input30Name(String v)
	{
		setInputCaption(30, v);
	}
	/**
	
	*/
	@property bool input30AutoAdvance()
	{
		return isInputSetAsAutoAdvance(30);
	}
	/// ditto
	@property void input30AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(30, v);
	}
	/**
	
	*/
	@property String input31Name()
	{
		return getInputCaption(31);
	}
	/// ditto
	@property void input31Name(String v)
	{
		setInputCaption(31, v);
	}
	/**
	
	*/
	@property bool input31AutoAdvance()
	{
		return isInputSetAsAutoAdvance(31);
	}
	/// ditto
	@property void input31AutoAdvance(bool v)
	{
		setInputAsAutoAdvance(31, v);
	}
}
