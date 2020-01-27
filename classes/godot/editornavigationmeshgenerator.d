/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editornavigationmeshgenerator;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.navigationmesh;
import godot.node;
/**

*/
@GodotBaseClass struct EditorNavigationMeshGenerator
{
	enum string _GODOT_internal_name = "EditorNavigationMeshGenerator";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("bake") GodotMethod!(void, NavigationMesh, Node) bake;
		@GodotName("clear") GodotMethod!(void, NavigationMesh) clear;
	}
	bool opEquals(in EditorNavigationMeshGenerator other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorNavigationMeshGenerator opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorNavigationMeshGenerator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorNavigationMeshGenerator");
		if(constructor is null) return typeof(this).init;
		return cast(EditorNavigationMeshGenerator)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void bake(NavigationMesh nav_mesh, Node root_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bake, _godot_object, nav_mesh, root_node);
	}
	/**
	
	*/
	void clear(NavigationMesh nav_mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object, nav_mesh);
	}
}
