/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventmidi;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputevent;
import godot.resource;
/**

*/
@GodotBaseClass struct InputEventMIDI
{
	enum string _GODOT_internal_name = "InputEventMIDI";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_channel") GodotMethod!(long) getChannel;
		@GodotName("get_controller_number") GodotMethod!(long) getControllerNumber;
		@GodotName("get_controller_value") GodotMethod!(long) getControllerValue;
		@GodotName("get_instrument") GodotMethod!(long) getInstrument;
		@GodotName("get_message") GodotMethod!(long) getMessage;
		@GodotName("get_pitch") GodotMethod!(long) getPitch;
		@GodotName("get_pressure") GodotMethod!(long) getPressure;
		@GodotName("get_velocity") GodotMethod!(long) getVelocity;
		@GodotName("set_channel") GodotMethod!(void, long) setChannel;
		@GodotName("set_controller_number") GodotMethod!(void, long) setControllerNumber;
		@GodotName("set_controller_value") GodotMethod!(void, long) setControllerValue;
		@GodotName("set_instrument") GodotMethod!(void, long) setInstrument;
		@GodotName("set_message") GodotMethod!(void, long) setMessage;
		@GodotName("set_pitch") GodotMethod!(void, long) setPitch;
		@GodotName("set_pressure") GodotMethod!(void, long) setPressure;
		@GodotName("set_velocity") GodotMethod!(void, long) setVelocity;
	}
	bool opEquals(in InputEventMIDI other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventMIDI opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventMIDI _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventMIDI");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventMIDI)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getChannel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getChannel, _godot_object);
	}
	/**
	
	*/
	long getControllerNumber() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getControllerNumber, _godot_object);
	}
	/**
	
	*/
	long getControllerValue() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getControllerValue, _godot_object);
	}
	/**
	
	*/
	long getInstrument() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getInstrument, _godot_object);
	}
	/**
	
	*/
	long getMessage() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMessage, _godot_object);
	}
	/**
	
	*/
	long getPitch() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPitch, _godot_object);
	}
	/**
	
	*/
	long getPressure() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getPressure, _godot_object);
	}
	/**
	
	*/
	long getVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVelocity, _godot_object);
	}
	/**
	
	*/
	void setChannel(in long channel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setChannel, _godot_object, channel);
	}
	/**
	
	*/
	void setControllerNumber(in long controller_number)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setControllerNumber, _godot_object, controller_number);
	}
	/**
	
	*/
	void setControllerValue(in long controller_value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setControllerValue, _godot_object, controller_value);
	}
	/**
	
	*/
	void setInstrument(in long instrument)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInstrument, _godot_object, instrument);
	}
	/**
	
	*/
	void setMessage(in long message)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMessage, _godot_object, message);
	}
	/**
	
	*/
	void setPitch(in long pitch)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPitch, _godot_object, pitch);
	}
	/**
	
	*/
	void setPressure(in long pressure)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPressure, _godot_object, pressure);
	}
	/**
	
	*/
	void setVelocity(in long velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVelocity, _godot_object, velocity);
	}
	/**
	
	*/
	@property long channel()
	{
		return getChannel();
	}
	/// ditto
	@property void channel(long v)
	{
		setChannel(v);
	}
	/**
	
	*/
	@property long controllerNumber()
	{
		return getControllerNumber();
	}
	/// ditto
	@property void controllerNumber(long v)
	{
		setControllerNumber(v);
	}
	/**
	
	*/
	@property long controllerValue()
	{
		return getControllerValue();
	}
	/// ditto
	@property void controllerValue(long v)
	{
		setControllerValue(v);
	}
	/**
	
	*/
	@property long instrument()
	{
		return getInstrument();
	}
	/// ditto
	@property void instrument(long v)
	{
		setInstrument(v);
	}
	/**
	
	*/
	@property long message()
	{
		return getMessage();
	}
	/// ditto
	@property void message(long v)
	{
		setMessage(v);
	}
	/**
	
	*/
	@property long pitch()
	{
		return getPitch();
	}
	/// ditto
	@property void pitch(long v)
	{
		setPitch(v);
	}
	/**
	
	*/
	@property long pressure()
	{
		return getPressure();
	}
	/// ditto
	@property void pressure(long v)
	{
		setPressure(v);
	}
	/**
	
	*/
	@property long velocity()
	{
		return getVelocity();
	}
	/// ditto
	@property void velocity(long v)
	{
		setVelocity(v);
	}
}
