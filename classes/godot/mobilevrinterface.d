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
import godot.reference;
/**
Generic mobile VR implementation

This is a generic mobile VR implementation where you need to provide details about the phone and HMD used. It does not rely on any existing framework. This is the most basic interface we have. For the best effect you do need a mobile phone with a gyroscope and accelerometer.
Note that even though there is no positional tracking the camera will assume the headset is at a height of 1.85 meters.
*/
@GodotBaseClass struct MobileVRInterface
{
	enum string _GODOT_internal_name = "MobileVRInterface";
public:
@nogc nothrow:
	union { godot_object _godot_object; ARVRInterface _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_iod") GodotMethod!(void, double) setIod;
		@GodotName("get_iod") GodotMethod!(double) getIod;
		@GodotName("set_display_width") GodotMethod!(void, double) setDisplayWidth;
		@GodotName("get_display_width") GodotMethod!(double) getDisplayWidth;
		@GodotName("set_display_to_lens") GodotMethod!(void, double) setDisplayToLens;
		@GodotName("get_display_to_lens") GodotMethod!(double) getDisplayToLens;
		@GodotName("set_oversample") GodotMethod!(void, double) setOversample;
		@GodotName("get_oversample") GodotMethod!(double) getOversample;
		@GodotName("set_k1") GodotMethod!(void, double) setK1;
		@GodotName("get_k1") GodotMethod!(double) getK1;
		@GodotName("set_k2") GodotMethod!(void, double) setK2;
		@GodotName("get_k2") GodotMethod!(double) getK2;
	}
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
	/**
	
	*/
	void setIod(in double iod)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIod, _godot_object, iod);
	}
	/**
	
	*/
	double getIod() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getIod, _godot_object);
	}
	/**
	
	*/
	void setDisplayWidth(in double display_width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisplayWidth, _godot_object, display_width);
	}
	/**
	
	*/
	double getDisplayWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDisplayWidth, _godot_object);
	}
	/**
	
	*/
	void setDisplayToLens(in double display_to_lens)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisplayToLens, _godot_object, display_to_lens);
	}
	/**
	
	*/
	double getDisplayToLens() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDisplayToLens, _godot_object);
	}
	/**
	
	*/
	void setOversample(in double oversample)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOversample, _godot_object, oversample);
	}
	/**
	
	*/
	double getOversample() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getOversample, _godot_object);
	}
	/**
	
	*/
	void setK1(in double k)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setK1, _godot_object, k);
	}
	/**
	
	*/
	double getK1() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getK1, _godot_object);
	}
	/**
	
	*/
	void setK2(in double k)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setK2, _godot_object, k);
	}
	/**
	
	*/
	double getK2() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getK2, _godot_object);
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
