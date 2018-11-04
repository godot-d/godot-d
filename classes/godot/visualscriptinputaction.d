/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptinputaction;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct VisualScriptInputAction
{
	enum string _GODOT_internal_name = "VisualScriptInputAction";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_action_name") GodotMethod!(void, String) setActionName;
		@GodotName("get_action_name") GodotMethod!(String) getActionName;
		@GodotName("set_action_mode") GodotMethod!(void, long) setActionMode;
		@GodotName("get_action_mode") GodotMethod!(VisualScriptInputAction.Mode) getActionMode;
	}
	bool opEquals(in VisualScriptInputAction other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptInputAction opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptInputAction _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptInputAction");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptInputAction)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Mode : int
	{
		/**
		
		*/
		modePressed = 0,
		/**
		
		*/
		modeReleased = 1,
		/**
		
		*/
		modeJustPressed = 2,
		/**
		
		*/
		modeJustReleased = 3,
	}
	/// 
	enum Constants : int
	{
		modePressed = 0,
		modeReleased = 1,
		modeJustPressed = 2,
		modeJustReleased = 3,
	}
	/**
	
	*/
	void setActionName(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setActionName, _godot_object, name);
	}
	/**
	
	*/
	String getActionName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getActionName, _godot_object);
	}
	/**
	
	*/
	void setActionMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setActionMode, _godot_object, mode);
	}
	/**
	
	*/
	VisualScriptInputAction.Mode getActionMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualScriptInputAction.Mode)(_classBinding.getActionMode, _godot_object);
	}
	/**
	
	*/
	@property String action()
	{
		return getActionName();
	}
	/// ditto
	@property void action(String v)
	{
		setActionName(v);
	}
	/**
	
	*/
	@property VisualScriptInputAction.Mode mode()
	{
		return getActionMode();
	}
	/// ditto
	@property void mode(long v)
	{
		setActionMode(v);
	}
}
