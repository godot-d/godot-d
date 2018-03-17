/**
Library of meshes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.meshlibrary;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.mesh;
import godot.navigationmesh;
import godot.texture;
/**
Library of meshes.

Contains a list of $(D Mesh) resources, each with name and ID. Useful for GridMap or painting Terrain.
*/
@GodotBaseClass struct MeshLibrary
{
	static immutable string _GODOT_internal_name = "MeshLibrary";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in MeshLibrary other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MeshLibrary opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MeshLibrary _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MeshLibrary");
		if(constructor is null) return typeof(this).init;
		return cast(MeshLibrary)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_create_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_item") = _GODOT_create_item;
	/**
	Create a new item in the library, supplied an id.
	*/
	void createItem(in long id)
	{
		_GODOT_create_item.bind("MeshLibrary", "create_item");
		ptrcall!(void)(_GODOT_create_item, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long, String) _GODOT_set_item_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_name") = _GODOT_set_item_name;
	/**
	Set the name of the item.
	*/
	void setItemName(StringArg1)(in long id, in StringArg1 name)
	{
		_GODOT_set_item_name.bind("MeshLibrary", "set_item_name");
		ptrcall!(void)(_GODOT_set_item_name, _godot_object, id, name);
	}
	package(godot) static GodotMethod!(void, long, Mesh) _GODOT_set_item_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_mesh") = _GODOT_set_item_mesh;
	/**
	Set the mesh of the item.
	*/
	void setItemMesh(in long id, Mesh mesh)
	{
		_GODOT_set_item_mesh.bind("MeshLibrary", "set_item_mesh");
		ptrcall!(void)(_GODOT_set_item_mesh, _godot_object, id, mesh);
	}
	package(godot) static GodotMethod!(void, long, NavigationMesh) _GODOT_set_item_navmesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_navmesh") = _GODOT_set_item_navmesh;
	/**
	
	*/
	void setItemNavmesh(in long id, NavigationMesh navmesh)
	{
		_GODOT_set_item_navmesh.bind("MeshLibrary", "set_item_navmesh");
		ptrcall!(void)(_GODOT_set_item_navmesh, _godot_object, id, navmesh);
	}
	package(godot) static GodotMethod!(void, long, Array) _GODOT_set_item_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_shapes") = _GODOT_set_item_shapes;
	/**
	
	*/
	void setItemShapes(in long id, in Array shapes)
	{
		_GODOT_set_item_shapes.bind("MeshLibrary", "set_item_shapes");
		ptrcall!(void)(_GODOT_set_item_shapes, _godot_object, id, shapes);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_set_item_preview;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_item_preview") = _GODOT_set_item_preview;
	/**
	
	*/
	void setItemPreview(in long id, Texture texture)
	{
		_GODOT_set_item_preview.bind("MeshLibrary", "set_item_preview");
		ptrcall!(void)(_GODOT_set_item_preview, _godot_object, id, texture);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_item_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_name") = _GODOT_get_item_name;
	/**
	Return the name of the item.
	*/
	String getItemName(in long id) const
	{
		_GODOT_get_item_name.bind("MeshLibrary", "get_item_name");
		return ptrcall!(String)(_GODOT_get_item_name, _godot_object, id);
	}
	package(godot) static GodotMethod!(Mesh, long) _GODOT_get_item_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_mesh") = _GODOT_get_item_mesh;
	/**
	Return the mesh of the item.
	*/
	Ref!Mesh getItemMesh(in long id) const
	{
		_GODOT_get_item_mesh.bind("MeshLibrary", "get_item_mesh");
		return ptrcall!(Mesh)(_GODOT_get_item_mesh, _godot_object, id);
	}
	package(godot) static GodotMethod!(NavigationMesh, long) _GODOT_get_item_navmesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_navmesh") = _GODOT_get_item_navmesh;
	/**
	
	*/
	Ref!NavigationMesh getItemNavmesh(in long id) const
	{
		_GODOT_get_item_navmesh.bind("MeshLibrary", "get_item_navmesh");
		return ptrcall!(NavigationMesh)(_GODOT_get_item_navmesh, _godot_object, id);
	}
	package(godot) static GodotMethod!(Array, long) _GODOT_get_item_shapes;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_shapes") = _GODOT_get_item_shapes;
	/**
	
	*/
	Array getItemShapes(in long id) const
	{
		_GODOT_get_item_shapes.bind("MeshLibrary", "get_item_shapes");
		return ptrcall!(Array)(_GODOT_get_item_shapes, _godot_object, id);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_item_preview;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_preview") = _GODOT_get_item_preview;
	/**
	
	*/
	Ref!Texture getItemPreview(in long id) const
	{
		_GODOT_get_item_preview.bind("MeshLibrary", "get_item_preview");
		return ptrcall!(Texture)(_GODOT_get_item_preview, _godot_object, id);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_remove_item;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_item") = _GODOT_remove_item;
	/**
	Remove the item.
	*/
	void removeItem(in long id)
	{
		_GODOT_remove_item.bind("MeshLibrary", "remove_item");
		ptrcall!(void)(_GODOT_remove_item, _godot_object, id);
	}
	package(godot) static GodotMethod!(long, String) _GODOT_find_item_by_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "find_item_by_name") = _GODOT_find_item_by_name;
	/**
	
	*/
	long findItemByName(StringArg0)(in StringArg0 name) const
	{
		_GODOT_find_item_by_name.bind("MeshLibrary", "find_item_by_name");
		return ptrcall!(long)(_GODOT_find_item_by_name, _godot_object, name);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clear the library.
	*/
	void clear()
	{
		_GODOT_clear.bind("MeshLibrary", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT_get_item_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_item_list") = _GODOT_get_item_list;
	/**
	Return the list of items.
	*/
	PoolIntArray getItemList() const
	{
		_GODOT_get_item_list.bind("MeshLibrary", "get_item_list");
		return ptrcall!(PoolIntArray)(_GODOT_get_item_list, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_last_unused_item_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_last_unused_item_id") = _GODOT_get_last_unused_item_id;
	/**
	Get an unused id for a new item.
	*/
	long getLastUnusedItemId() const
	{
		_GODOT_get_last_unused_item_id.bind("MeshLibrary", "get_last_unused_item_id");
		return ptrcall!(long)(_GODOT_get_last_unused_item_id, _godot_object);
	}
}
