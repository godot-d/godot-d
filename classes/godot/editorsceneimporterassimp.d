/**
Multi-format 3D asset importer based on $(D url=http://assimp.org/)Assimp$(D /url).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorsceneimporterassimp;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.editorsceneimporter;
import godot.reference;
/**
Multi-format 3D asset importer based on $(D url=http://assimp.org/)Assimp$(D /url).

This is a multi-format 3D asset importer based on $(D url=http://assimp.org/)Assimp$(D /url). See $(D url=https://assimp-docs.readthedocs.io/en/latest/about/intoduction.html#installation)this page$(D /url) for a full list of supported formats.
If exporting a FBX scene from Autodesk Maya, use these FBX export settings:


- Smoothing Groups
- Smooth Mesh
- Triangluate (for meshes with blend shapes)
- Bake Animation
- Resample All
- Deformed Models
- Skins
- Blend Shapes
- Curve Filters
- Constant Key Reducer
- Auto Tangents Only
- *Do not check* Constraints (as it will break the file)
- Can check Embed Media (embeds textures into the exported FBX file)
  - Note that when importing embedded media, the texture and mesh will be a single immutable file.
  - You will have to re-export then re-import the FBX if the texture has changed.
- Units: Centimeters
- Up Axis: Y
- Binary format in FBX 2017


*/
@GodotBaseClass struct EditorSceneImporterAssimp
{
	enum string _GODOT_internal_name = "EditorSceneImporterAssimp";
public:
@nogc nothrow:
	union { godot_object _godot_object; EditorSceneImporter _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
	}
	bool opEquals(in EditorSceneImporterAssimp other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorSceneImporterAssimp opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorSceneImporterAssimp _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSceneImporterAssimp");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSceneImporterAssimp)(constructor());
	}
	@disable new(size_t s);
}
