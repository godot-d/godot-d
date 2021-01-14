/**
Imports scenes from third-parties' 3D files.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorsceneimporter;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
import godot.animation;
import godot.node;
/**
Imports scenes from third-parties' 3D files.
*/
@GodotBaseClass struct EditorSceneImporter
{
	package(godot) enum string _GODOT_internal_name = "EditorSceneImporter";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_extensions") GodotMethod!(Array) _getExtensions;
		@GodotName("_get_import_flags") GodotMethod!(long) _getImportFlags;
		@GodotName("_import_animation") GodotMethod!(Animation, String, long, long) _importAnimation;
		@GodotName("_import_scene") GodotMethod!(Node, String, long, long) _importScene;
		@GodotName("import_animation_from_other_importer") GodotMethod!(Animation, String, long, long) importAnimationFromOtherImporter;
		@GodotName("import_scene_from_other_importer") GodotMethod!(Node, String, long, long) importSceneFromOtherImporter;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorSceneImporter other) const
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
	/// Construct a new instance of EditorSceneImporter.
	/// Note: use `memnew!EditorSceneImporter` instead.
	static EditorSceneImporter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSceneImporter");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSceneImporter)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/**
		
		*/
		importScene = 1,
		/**
		
		*/
		importAnimation = 2,
		/**
		
		*/
		importAnimationDetectLoop = 4,
		/**
		
		*/
		importAnimationOptimize = 8,
		/**
		
		*/
		importAnimationForceAllTracksInAllClips = 16,
		/**
		
		*/
		importAnimationKeepValueTracks = 32,
		/**
		
		*/
		importGenerateTangentArrays = 256,
		/**
		
		*/
		importFailOnMissingDependencies = 512,
		/**
		
		*/
		importMaterialsInInstances = 1024,
		/**
		
		*/
		importUseCompression = 2048,
	}
	/**
	
	*/
	Array _getExtensions()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_extensions");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	long _getImportFlags()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_import_flags");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	Ref!Animation _importAnimation(in String path, in long flags, in long bake_fps)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(path);
		_GODOT_args.append(flags);
		_GODOT_args.append(bake_fps);
		String _GODOT_method_name = String("_import_animation");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Animation);
	}
	/**
	
	*/
	Node _importScene(in String path, in long flags, in long bake_fps)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(path);
		_GODOT_args.append(flags);
		_GODOT_args.append(bake_fps);
		String _GODOT_method_name = String("_import_scene");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Node);
	}
	/**
	
	*/
	Ref!Animation importAnimationFromOtherImporter(in String path, in long flags, in long bake_fps)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Animation)(GDNativeClassBinding.importAnimationFromOtherImporter, _godot_object, path, flags, bake_fps);
	}
	/**
	
	*/
	Node importSceneFromOtherImporter(in String path, in long flags, in long bake_fps)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.importSceneFromOtherImporter, _godot_object, path, flags, bake_fps);
	}
}
