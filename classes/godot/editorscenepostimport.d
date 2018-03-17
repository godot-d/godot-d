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
@GodotBaseClass struct EditorScenePostImport
{
	static immutable string _GODOT_internal_name = "EditorScenePostImport";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_post_import;
	package(godot) alias _GODOT_methodBindInfo(string name : "post_import") = _GODOT_post_import;
	/**
	
	*/
	void postImport(GodotObject scene)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(scene);
		String _GODOT_method_name = String("post_import");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
