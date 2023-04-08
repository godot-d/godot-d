/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gltfcamera;
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
/**

*/
@GodotBaseClass struct GLTFCamera
{
	package(godot) enum string _GODOT_internal_name = "GLTFCamera";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_fov_size") GodotMethod!(double) getFovSize;
		@GodotName("get_perspective") GodotMethod!(bool) getPerspective;
		@GodotName("get_zfar") GodotMethod!(double) getZfar;
		@GodotName("get_znear") GodotMethod!(double) getZnear;
		@GodotName("set_fov_size") GodotMethod!(void, double) setFovSize;
		@GodotName("set_perspective") GodotMethod!(void, bool) setPerspective;
		@GodotName("set_zfar") GodotMethod!(void, double) setZfar;
		@GodotName("set_znear") GodotMethod!(void, double) setZnear;
	}
	/// 
	pragma(inline, true) bool opEquals(in GLTFCamera other) const
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
	/// Construct a new instance of GLTFCamera.
	/// Note: use `memnew!GLTFCamera` instead.
	static GLTFCamera _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GLTFCamera");
		if(constructor is null) return typeof(this).init;
		return cast(GLTFCamera)(constructor());
	}
	/**
	
	*/
	double getFovSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFovSize, _godot_object);
	}
	/**
	
	*/
	bool getPerspective() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getPerspective, _godot_object);
	}
	/**
	
	*/
	double getZfar() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getZfar, _godot_object);
	}
	/**
	
	*/
	double getZnear() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getZnear, _godot_object);
	}
	/**
	
	*/
	void setFovSize(in double fov_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFovSize, _godot_object, fov_size);
	}
	/**
	
	*/
	void setPerspective(in bool perspective)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPerspective, _godot_object, perspective);
	}
	/**
	
	*/
	void setZfar(in double zfar)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setZfar, _godot_object, zfar);
	}
	/**
	
	*/
	void setZnear(in double znear)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setZnear, _godot_object, znear);
	}
	/**
	
	*/
	@property double fovSize()
	{
		return getFovSize();
	}
	/// ditto
	@property void fovSize(double v)
	{
		setFovSize(v);
	}
	/**
	
	*/
	@property bool perspective()
	{
		return getPerspective();
	}
	/// ditto
	@property void perspective(bool v)
	{
		setPerspective(v);
	}
	/**
	
	*/
	@property double zfar()
	{
		return getZfar();
	}
	/// ditto
	@property void zfar(double v)
	{
		setZfar(v);
	}
	/**
	
	*/
	@property double znear()
	{
		return getZnear();
	}
	/// ditto
	@property void znear(double v)
	{
		setZnear(v);
	}
}
