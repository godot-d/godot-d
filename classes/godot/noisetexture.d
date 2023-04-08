/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.noisetexture;
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
import godot.texture;
import godot.image;
import godot.opensimplexnoise;
/**

*/
@GodotBaseClass struct NoiseTexture
{
	package(godot) enum string _GODOT_internal_name = "NoiseTexture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_generate_texture") GodotMethod!(Image) _generateTexture;
		@GodotName("_queue_update") GodotMethod!(void) _queueUpdate;
		@GodotName("_thread_done") GodotMethod!(void, Image) _threadDone;
		@GodotName("_update_texture") GodotMethod!(void) _updateTexture;
		@GodotName("get_bump_strength") GodotMethod!(double) getBumpStrength;
		@GodotName("get_noise") GodotMethod!(OpenSimplexNoise) getNoise;
		@GodotName("get_noise_offset") GodotMethod!(Vector2) getNoiseOffset;
		@GodotName("get_seamless") GodotMethod!(bool) getSeamless;
		@GodotName("is_normalmap") GodotMethod!(bool) isNormalmap;
		@GodotName("set_as_normalmap") GodotMethod!(void, bool) setAsNormalmap;
		@GodotName("set_bump_strength") GodotMethod!(void, double) setBumpStrength;
		@GodotName("set_height") GodotMethod!(void, long) setHeight;
		@GodotName("set_noise") GodotMethod!(void, OpenSimplexNoise) setNoise;
		@GodotName("set_noise_offset") GodotMethod!(void, Vector2) setNoiseOffset;
		@GodotName("set_seamless") GodotMethod!(void, bool) setSeamless;
		@GodotName("set_width") GodotMethod!(void, long) setWidth;
	}
	/// 
	pragma(inline, true) bool opEquals(in NoiseTexture other) const
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
	/// Construct a new instance of NoiseTexture.
	/// Note: use `memnew!NoiseTexture` instead.
	static NoiseTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NoiseTexture");
		if(constructor is null) return typeof(this).init;
		return cast(NoiseTexture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!Image _generateTexture()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_generate_texture");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Image);
	}
	/**
	
	*/
	void _queueUpdate()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_queue_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _threadDone(Image image)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(image);
		String _GODOT_method_name = String("_thread_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateTexture()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_texture");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double getBumpStrength()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBumpStrength, _godot_object);
	}
	/**
	
	*/
	Ref!OpenSimplexNoise getNoise()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OpenSimplexNoise)(GDNativeClassBinding.getNoise, _godot_object);
	}
	/**
	
	*/
	Vector2 getNoiseOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getNoiseOffset, _godot_object);
	}
	/**
	
	*/
	bool getSeamless()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getSeamless, _godot_object);
	}
	/**
	
	*/
	bool isNormalmap()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isNormalmap, _godot_object);
	}
	/**
	
	*/
	void setAsNormalmap(in bool as_normalmap)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAsNormalmap, _godot_object, as_normalmap);
	}
	/**
	
	*/
	void setBumpStrength(in double bump_strength)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBumpStrength, _godot_object, bump_strength);
	}
	/**
	
	*/
	void setHeight(in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHeight, _godot_object, height);
	}
	/**
	
	*/
	void setNoise(OpenSimplexNoise noise)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNoise, _godot_object, noise);
	}
	/**
	
	*/
	void setNoiseOffset(in Vector2 noise_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNoiseOffset, _godot_object, noise_offset);
	}
	/**
	
	*/
	void setSeamless(in bool seamless)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSeamless, _godot_object, seamless);
	}
	/**
	
	*/
	void setWidth(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWidth, _godot_object, width);
	}
	/**
	
	*/
	@property bool asNormalmap()
	{
		return isNormalmap();
	}
	/// ditto
	@property void asNormalmap(bool v)
	{
		setAsNormalmap(v);
	}
	/**
	
	*/
	@property double bumpStrength()
	{
		return getBumpStrength();
	}
	/// ditto
	@property void bumpStrength(double v)
	{
		setBumpStrength(v);
	}
	/**
	
	*/
	@property long height()
	{
		return getHeight();
	}
	/// ditto
	@property void height(long v)
	{
		setHeight(v);
	}
	/**
	
	*/
	@property OpenSimplexNoise noise()
	{
		return getNoise();
	}
	/// ditto
	@property void noise(OpenSimplexNoise v)
	{
		setNoise(v);
	}
	/**
	
	*/
	@property Vector2 noiseOffset()
	{
		return getNoiseOffset();
	}
	/// ditto
	@property void noiseOffset(Vector2 v)
	{
		setNoiseOffset(v);
	}
	/**
	
	*/
	@property bool seamless()
	{
		return getSeamless();
	}
	/// ditto
	@property void seamless(bool v)
	{
		setSeamless(v);
	}
	/**
	
	*/
	@property long width()
	{
		return getWidth();
	}
	/// ditto
	@property void width(long v)
	{
		setWidth(v);
	}
}
