/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gltfspecgloss;
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
import godot.resource;
import godot.image;
/**

*/
@GodotBaseClass struct GLTFSpecGloss
{
	package(godot) enum string _GODOT_internal_name = "GLTFSpecGloss";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_diffuse_factor") GodotMethod!(Color) getDiffuseFactor;
		@GodotName("get_diffuse_img") GodotMethod!(Image) getDiffuseImg;
		@GodotName("get_gloss_factor") GodotMethod!(double) getGlossFactor;
		@GodotName("get_spec_gloss_img") GodotMethod!(Image) getSpecGlossImg;
		@GodotName("get_specular_factor") GodotMethod!(Color) getSpecularFactor;
		@GodotName("set_diffuse_factor") GodotMethod!(void, Color) setDiffuseFactor;
		@GodotName("set_diffuse_img") GodotMethod!(void, Image) setDiffuseImg;
		@GodotName("set_gloss_factor") GodotMethod!(void, double) setGlossFactor;
		@GodotName("set_spec_gloss_img") GodotMethod!(void, Image) setSpecGlossImg;
		@GodotName("set_specular_factor") GodotMethod!(void, Color) setSpecularFactor;
	}
	/// 
	pragma(inline, true) bool opEquals(in GLTFSpecGloss other) const
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
	/// Construct a new instance of GLTFSpecGloss.
	/// Note: use `memnew!GLTFSpecGloss` instead.
	static GLTFSpecGloss _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GLTFSpecGloss");
		if(constructor is null) return typeof(this).init;
		return cast(GLTFSpecGloss)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Color getDiffuseFactor()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getDiffuseFactor, _godot_object);
	}
	/**
	
	*/
	Ref!Image getDiffuseImg()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(GDNativeClassBinding.getDiffuseImg, _godot_object);
	}
	/**
	
	*/
	double getGlossFactor()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGlossFactor, _godot_object);
	}
	/**
	
	*/
	Ref!Image getSpecGlossImg()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(GDNativeClassBinding.getSpecGlossImg, _godot_object);
	}
	/**
	
	*/
	Color getSpecularFactor()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getSpecularFactor, _godot_object);
	}
	/**
	
	*/
	void setDiffuseFactor(in Color diffuse_factor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDiffuseFactor, _godot_object, diffuse_factor);
	}
	/**
	
	*/
	void setDiffuseImg(Image diffuse_img)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDiffuseImg, _godot_object, diffuse_img);
	}
	/**
	
	*/
	void setGlossFactor(in double gloss_factor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlossFactor, _godot_object, gloss_factor);
	}
	/**
	
	*/
	void setSpecGlossImg(Image spec_gloss_img)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpecGlossImg, _godot_object, spec_gloss_img);
	}
	/**
	
	*/
	void setSpecularFactor(in Color specular_factor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpecularFactor, _godot_object, specular_factor);
	}
	/**
	
	*/
	@property Color diffuseFactor()
	{
		return getDiffuseFactor();
	}
	/// ditto
	@property void diffuseFactor(Color v)
	{
		setDiffuseFactor(v);
	}
	/**
	
	*/
	@property Image diffuseImg()
	{
		return getDiffuseImg();
	}
	/// ditto
	@property void diffuseImg(Image v)
	{
		setDiffuseImg(v);
	}
	/**
	
	*/
	@property double glossFactor()
	{
		return getGlossFactor();
	}
	/// ditto
	@property void glossFactor(double v)
	{
		setGlossFactor(v);
	}
	/**
	
	*/
	@property Image specGlossImg()
	{
		return getSpecGlossImg();
	}
	/// ditto
	@property void specGlossImg(Image v)
	{
		setSpecGlossImg(v);
	}
	/**
	
	*/
	@property Color specularFactor()
	{
		return getSpecularFactor();
	}
	/// ditto
	@property void specularFactor(Color v)
	{
		setSpecularFactor(v);
	}
}
