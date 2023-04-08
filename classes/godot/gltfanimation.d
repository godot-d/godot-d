/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gltfanimation;
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
@GodotBaseClass struct GLTFAnimation
{
	package(godot) enum string _GODOT_internal_name = "GLTFAnimation";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_loop") GodotMethod!(bool) getLoop;
		@GodotName("set_loop") GodotMethod!(void, bool) setLoop;
	}
	/// 
	pragma(inline, true) bool opEquals(in GLTFAnimation other) const
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
	/// Construct a new instance of GLTFAnimation.
	/// Note: use `memnew!GLTFAnimation` instead.
	static GLTFAnimation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GLTFAnimation");
		if(constructor is null) return typeof(this).init;
		return cast(GLTFAnimation)(constructor());
	}
	/**
	
	*/
	bool getLoop() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getLoop, _godot_object);
	}
	/**
	
	*/
	void setLoop(in bool loop)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLoop, _godot_object, loop);
	}
	/**
	
	*/
	@property bool loop()
	{
		return getLoop();
	}
	/// ditto
	@property void loop(bool v)
	{
		setLoop(v);
	}
}
