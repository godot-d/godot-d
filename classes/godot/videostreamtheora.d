/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.videostreamtheora;
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
import godot.videostream;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct VideoStreamTheora
{
	package(godot) enum string _GODOT_internal_name = "VideoStreamTheora";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VideoStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_file") GodotMethod!(String) getFile;
		@GodotName("set_file") GodotMethod!(void, String) setFile;
	}
	/// 
	pragma(inline, true) bool opEquals(in VideoStreamTheora other) const
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
	/// Construct a new instance of VideoStreamTheora.
	/// Note: use `memnew!VideoStreamTheora` instead.
	static VideoStreamTheora _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VideoStreamTheora");
		if(constructor is null) return typeof(this).init;
		return cast(VideoStreamTheora)(constructor());
	}
	/**
	
	*/
	String getFile()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getFile, _godot_object);
	}
	/**
	
	*/
	void setFile(in String file)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFile, _godot_object, file);
	}
	/**
	
	*/
	@property String file()
	{
		return getFile();
	}
	/// ditto
	@property void file(String v)
	{
		setFile(v);
	}
}
