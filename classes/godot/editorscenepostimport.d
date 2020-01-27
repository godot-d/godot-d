/**
Post-processes scenes after import.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorscenepostimport;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**
Post-processes scenes after import.

Imported scenes can be automatically modified right after import by setting their $(B Custom Script) Import property to a `tool` script that inherits from this class.
The $(D postImport) callback receives the imported scene's root node and returns the modified version of the scene. Usage example:


tool # Needed so it runs in editor
extends EditorScenePostImport

# This sample changes all node names

# Called right after the scene is imported and gets the root node
func post_import(scene):
    # Change all node names to "modified_$(D oldnodename)"
    iterate(scene)
    return scene # Remember to return the imported scene

func iterate(node):
    if node != null:
        node.name = "modified_" + node.name
        for child in node.get_children():
            iterate(child)


*/
@GodotBaseClass struct EditorScenePostImport
{
	enum string _GODOT_internal_name = "EditorScenePostImport";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_source_file") GodotMethod!(String) getSourceFile;
		@GodotName("get_source_folder") GodotMethod!(String) getSourceFolder;
		@GodotName("post_import") GodotMethod!(GodotObject, GodotObject) postImport;
	}
	bool opEquals(in EditorScenePostImport other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorScenePostImport opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorScenePostImport _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorScenePostImport");
		if(constructor is null) return typeof(this).init;
		return cast(EditorScenePostImport)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the source file path which got imported (e.g. `res://scene.dae`).
	*/
	String getSourceFile() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSourceFile, _godot_object);
	}
	/**
	Returns the resource folder the imported scene file is located in.
	*/
	String getSourceFolder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getSourceFolder, _godot_object);
	}
	/**
	Called after the scene was imported. This method must return the modified version of the scene.
	*/
	GodotObject postImport(GodotObject scene)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(scene);
		String _GODOT_method_name = String("post_import");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!GodotObject);
	}
}
