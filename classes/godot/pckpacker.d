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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**

*/
@GodotBaseClass struct PCKPacker
{
	enum string _GODOT_internal_name = "PCKPacker";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("pck_start") GodotMethod!(GodotError, String, long) pckStart;
		@GodotName("add_file") GodotMethod!(GodotError, String, String) addFile;
		@GodotName("flush") GodotMethod!(GodotError, bool) flush;
	}
	bool opEquals(in PCKPacker other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PCKPacker opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PCKPacker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PCKPacker");
		if(constructor is null) return typeof(this).init;
		return cast(PCKPacker)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	GodotError pckStart(in String pck_name, in long alignment)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.pckStart, _godot_object, pck_name, alignment);
	}
	/**
	
	*/
	GodotError addFile(in String pck_path, in String source_path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.addFile, _godot_object, pck_path, source_path);
	}
	/**
	
	*/
	GodotError flush(in bool verbose)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.flush, _godot_object, verbose);
	}
}
