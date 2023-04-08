/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorscenepostimport;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.reference;
/**

*/
@GodotBaseClass struct EditorScenePostImport
{
	package(godot) enum string _GODOT_internal_name = "EditorScenePostImport";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_source_file") GodotMethod!(String) getSourceFile;
		@GodotName("get_source_folder") GodotMethod!(String) getSourceFolder;
		@GodotName("post_import") GodotMethod!(GodotObject, GodotObject) postImport;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorScenePostImport other) const
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
	/// Construct a new instance of EditorScenePostImport.
	/// Note: use `memnew!EditorScenePostImport` instead.
	static EditorScenePostImport _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorScenePostImport");
		if(constructor is null) return typeof(this).init;
		return cast(EditorScenePostImport)(constructor());
	}
	/**
	
	*/
	String getSourceFile() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSourceFile, _godot_object);
	}
	/**
	
	*/
	String getSourceFolder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSourceFolder, _godot_object);
	}
	/**
	
	*/
	GodotObject postImport(GodotObject scene)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(scene);
		String _GODOT_method_name = String("post_import");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!GodotObject);
	}
}
