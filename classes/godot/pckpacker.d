/**
Creates packages that can be loaded into a running project.

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
Creates packages that can be loaded into a running project.

The $(D PCKPacker) is used to create packages that can be loaded into a running project using $(D ProjectSettings.loadResourcePack).


var packer = PCKPacker.new()
packer.pck_start("test.pck")
packer.add_file("res://text.txt", "text.txt")
packer.flush()


The above $(D PCKPacker) creates package `test.pck`, then adds a file named `text.txt` at the root of the package.
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
		@GodotName("add_file") GodotMethod!(GodotError, String, String) addFile;
		@GodotName("flush") GodotMethod!(GodotError, bool) flush;
		@GodotName("pck_start") GodotMethod!(GodotError, String, long) pckStart;
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
	Adds the `source_path` file to the current PCK package at the `pck_path` internal path (should start with `res://`).
	*/
	GodotError addFile(in String pck_path, in String source_path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.addFile, _godot_object, pck_path, source_path);
	}
	/**
	Writes the files specified using all $(D addFile) calls since the last flush. If `verbose` is `true`, a list of files added will be printed to the console for easier debugging.
	*/
	GodotError flush(in bool verbose = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.flush, _godot_object, verbose);
	}
	/**
	Creates a new PCK file with the name `pck_name`. The `.pck` file extension isn't added automatically, so it should be part of `pck_name` (even though it's not required).
	*/
	GodotError pckStart(in String pck_name, in long alignment = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.pckStart, _godot_object, pck_name, alignment);
	}
}
