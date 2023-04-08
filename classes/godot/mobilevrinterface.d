/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.mobilevrinterface;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.arvrinterface;
import godot.reference;
/**

*/
@GodotBaseClass struct MobileVRInterface
{
	package(godot) enum string _GODOT_internal_name = "MobileVRInterface";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ ARVRInterface _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_display_to_lens") GodotMethod!(double) getDisplayToLens;
		@GodotName("get_display_width") GodotMethod!(double) getDisplayWidth;
		@GodotName("get_eye_height") GodotMethod!(double) getEyeHeight;
		@GodotName("get_iod") GodotMethod!(double) getIod;
		@GodotName("get_k1") GodotMethod!(double) getK1;
		@GodotName("get_k2") GodotMethod!(double) getK2;
		@GodotName("get_oversample") GodotMethod!(double) getOversample;
		@GodotName("set_display_to_lens") GodotMethod!(void, double) setDisplayToLens;
		@GodotName("set_display_width") GodotMethod!(void, double) setDisplayWidth;
		@GodotName("set_eye_height") GodotMethod!(void, double) setEyeHeight;
		@GodotName("set_iod") GodotMethod!(void, double) setIod;
		@GodotName("set_k1") GodotMethod!(void, double) setK1;
		@GodotName("set_k2") GodotMethod!(void, double) setK2;
		@GodotName("set_oversample") GodotMethod!(void, double) setOversample;
	}
	/// 
	pragma(inline, true) bool opEquals(in MobileVRInterface other) const
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
	/// Construct a new instance of MobileVRInterface.
	/// Note: use `memnew!MobileVRInterface` instead.
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
	double getDisplayToLens() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDisplayToLens, _godot_object);
	}
	/**
	
	*/
	double getDisplayWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDisplayWidth, _godot_object);
	}
	/**
	
	*/
	double getEyeHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEyeHeight, _godot_object);
	}
	/**
	
	*/
	double getIod() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getIod, _godot_object);
	}
	/**
	
	*/
	double getK1() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getK1, _godot_object);
	}
	/**
	
	*/
	double getK2() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getK2, _godot_object);
	}
	/**
	
	*/
	double getOversample() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getOversample, _godot_object);
	}
	/**
	
	*/
	void setDisplayToLens(in double display_to_lens)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisplayToLens, _godot_object, display_to_lens);
	}
	/**
	
	*/
	void setDisplayWidth(in double display_width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisplayWidth, _godot_object, display_width);
	}
	/**
	
	*/
	void setEyeHeight(in double eye_height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEyeHeight, _godot_object, eye_height);
	}
	/**
	
	*/
	void setIod(in double iod)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIod, _godot_object, iod);
	}
	/**
	
	*/
	void setK1(in double k)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setK1, _godot_object, k);
	}
	/**
	
	*/
	void setK2(in double k)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setK2, _godot_object, k);
	}
	/**
	
	*/
	void setOversample(in double oversample)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOversample, _godot_object, oversample);
	}
	/**
	
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
	
	*/
	@property double eyeHeight()
	{
		return getEyeHeight();
	}
	/// ditto
	@property void eyeHeight(double v)
	{
		setEyeHeight(v);
	}
	/**
	
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
	/**
	
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
}
