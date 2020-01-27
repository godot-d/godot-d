/**
Emits a specified signal.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptemitsignal;
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
/**
Emits a specified signal.

Emits a specified signal when it is executed.
$(B Input Ports:)
- Sequence: `emit`
$(B Output Ports:)
- Sequence
*/
@GodotBaseClass struct VisualScriptEmitSignal
{
	enum string _GODOT_internal_name = "VisualScriptEmitSignal";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_signal") GodotMethod!(String) getSignal;
		@GodotName("set_signal") GodotMethod!(void, String) setSignal;
	}
	bool opEquals(in VisualScriptEmitSignal other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptEmitSignal opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptEmitSignal _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptEmitSignal");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptEmitSignal)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String getSignal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSignal, _godot_object);
	}
	/**
	
	*/
	void setSignal(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSignal, _godot_object, name);
	}
	/**
	The signal to emit.
	*/
	@property String signal()
	{
		return getSignal();
	}
	/// ditto
	@property void signal(String v)
	{
		setSignal(v);
	}
}
