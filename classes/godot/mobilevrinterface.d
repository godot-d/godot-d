/**
Generic mobile VR implementation

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.mobilevrinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.arvrinterface;
/**
Generic mobile VR implementation

This is a generic mobile VR implementation where you need to provide details about the phone and HMD used. It does not rely on any existing framework. This is the most basic interface we have. For the best effect you do need a mobile phone with a gyroscope and accelerometer.
Note that even though there is no positional tracking the camera will assume the headset is at a height of 1.85 meters.
*/
@GodotBaseClass struct MobileVRInterface
{
	static immutable string _GODOT_internal_name = "MobileVRInterface";
public:
@nogc nothrow:
	union { godot_object _godot_object; ARVRInterface _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in MobileVRInterface other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MobileVRInterface opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MobileVRInterface _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MobileVRInterface");
		if(constructor is null) return typeof(this).init;
		return cast(MobileVRInterface)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, double) _GODOT_set_iod;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_iod") = _GODOT_set_iod;
	/**
	
	*/
	void setIod(in double iod)
	{
		_GODOT_set_iod.bind("MobileVRInterface", "set_iod");
		ptrcall!(void)(_GODOT_set_iod, _godot_object, iod);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_iod;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_iod") = _GODOT_get_iod;
	/**
	
	*/
	double getIod() const
	{
		_GODOT_get_iod.bind("MobileVRInterface", "get_iod");
		return ptrcall!(double)(_GODOT_get_iod, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_display_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_display_width") = _GODOT_set_display_width;
	/**
	
	*/
	void setDisplayWidth(in double display_width)
	{
		_GODOT_set_display_width.bind("MobileVRInterface", "set_display_width");
		ptrcall!(void)(_GODOT_set_display_width, _godot_object, display_width);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_display_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_display_width") = _GODOT_get_display_width;
	/**
	
	*/
	double getDisplayWidth() const
	{
		_GODOT_get_display_width.bind("MobileVRInterface", "get_display_width");
		return ptrcall!(double)(_GODOT_get_display_width, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_display_to_lens;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_display_to_lens") = _GODOT_set_display_to_lens;
	/**
	
	*/
	void setDisplayToLens(in double display_to_lens)
	{
		_GODOT_set_display_to_lens.bind("MobileVRInterface", "set_display_to_lens");
		ptrcall!(void)(_GODOT_set_display_to_lens, _godot_object, display_to_lens);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_display_to_lens;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_display_to_lens") = _GODOT_get_display_to_lens;
	/**
	
	*/
	double getDisplayToLens() const
	{
		_GODOT_get_display_to_lens.bind("MobileVRInterface", "get_display_to_lens");
		return ptrcall!(double)(_GODOT_get_display_to_lens, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_oversample;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_oversample") = _GODOT_set_oversample;
	/**
	
	*/
	void setOversample(in double oversample)
	{
		_GODOT_set_oversample.bind("MobileVRInterface", "set_oversample");
		ptrcall!(void)(_GODOT_set_oversample, _godot_object, oversample);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_oversample;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_oversample") = _GODOT_get_oversample;
	/**
	
	*/
	double getOversample() const
	{
		_GODOT_get_oversample.bind("MobileVRInterface", "get_oversample");
		return ptrcall!(double)(_GODOT_get_oversample, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_k1;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_k1") = _GODOT_set_k1;
	/**
	
	*/
	void setK1(in double k)
	{
		_GODOT_set_k1.bind("MobileVRInterface", "set_k1");
		ptrcall!(void)(_GODOT_set_k1, _godot_object, k);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_k1;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_k1") = _GODOT_get_k1;
	/**
	
	*/
	double getK1() const
	{
		_GODOT_get_k1.bind("MobileVRInterface", "get_k1");
		return ptrcall!(double)(_GODOT_get_k1, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_k2;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_k2") = _GODOT_set_k2;
	/**
	
	*/
	void setK2(in double k)
	{
		_GODOT_set_k2.bind("MobileVRInterface", "set_k2");
		ptrcall!(void)(_GODOT_set_k2, _godot_object, k);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_k2;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_k2") = _GODOT_get_k2;
	/**
	
	*/
	double getK2() const
	{
		_GODOT_get_k2.bind("MobileVRInterface", "get_k2");
		return ptrcall!(double)(_GODOT_get_k2, _godot_object);
	}
	/**
	The interocular distance, also known as the interpupillary distance. The distance between the pupils of the left and right eye.
	*/
	@property double iod()
	{
		return getIod();
	}
	/// ditto
	@property void iod(double v)
	{
		setIod(v);
	}
	/**
	The width of the display in centimeters.
	*/
	@property double displayWidth()
	{
		return getDisplayWidth();
	}
	/// ditto
	@property void displayWidth(double v)
	{
		setDisplayWidth(v);
	}
	/**
	The distance between the display and the lenses inside of the device in centimeters.
	*/
	@property double displayToLens()
	{
		return getDisplayToLens();
	}
	/// ditto
	@property void displayToLens(double v)
	{
		setDisplayToLens(v);
	}
	/**
	The oversample setting. Because of the lens distortion we have to render our buffers at a higher resolution then the screen can natively handle. A value between 1.5 and 2.0 often provides good results but at the cost of performance.
	*/
	@property double oversample()
	{
		return getOversample();
	}
	/// ditto
	@property void oversample(double v)
	{
		setOversample(v);
	}
	/**
	The k1 lens factor is one of the two constants that define the strength of the lens used and directly influences the lens distortion effect.
	*/
	@property double k1()
	{
		return getK1();
	}
	/// ditto
	@property void k1(double v)
	{
		setK1(v);
	}
	/**
	The k2 lens factor, see k1.
	*/
	@property double k2()
	{
		return getK2();
	}
	/// ditto
	@property void k2(double v)
	{
		setK2(v);
	}
}
