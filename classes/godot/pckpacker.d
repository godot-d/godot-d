/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.pckpacker;
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
import godot.reference;
/**

*/
@GodotBaseClass struct PCKPacker
{
	package(godot) enum string _GODOT_internal_name = "PCKPacker";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_file") GodotMethod!(GodotError, String, String) addFile;
		@GodotName("flush") GodotMethod!(GodotError, bool) flush;
		@GodotName("pck_start") GodotMethod!(GodotError, String, long) pckStart;
	}
	/// 
	pragma(inline, true) bool opEquals(in PCKPacker other) const
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
	/// Construct a new instance of PCKPacker.
	/// Note: use `memnew!PCKPacker` instead.
	static PCKPacker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PCKPacker");
		if(constructor is null) return typeof(this).init;
		return cast(PCKPacker)(constructor());
	}
	/**
	
	*/
	GodotError addFile(in String pck_path, in String source_path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.addFile, _godot_object, pck_path, source_path);
	}
	/**
	
	*/
	GodotError flush(in bool verbose = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.flush, _godot_object, verbose);
	}
	/**
	
	*/
	GodotError pckStart(in String pck_name, in long alignment = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.pckStart, _godot_object, pck_name, alignment);
	}
}
