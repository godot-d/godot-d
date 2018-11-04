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
import godot.reference;
/**
Library of meshes.

Contains a list of $(D Mesh) resources, each with name and ID. Useful for GridMap or painting Terrain.
*/
@GodotBaseClass struct MeshLibrary
{
	enum string _GODOT_internal_name = "MeshLibrary";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("create_item") GodotMethod!(void, long) createItem;
		@GodotName("set_item_name") GodotMethod!(void, long, String) setItemName;
		@GodotName("set_item_mesh") GodotMethod!(void, long, Mesh) setItemMesh;
		@GodotName("set_item_navmesh") GodotMethod!(void, long, NavigationMesh) setItemNavmesh;
		@GodotName("set_item_shapes") GodotMethod!(void, long, Array) setItemShapes;
		@GodotName("set_item_preview") GodotMethod!(void, long, Texture) setItemPreview;
		@GodotName("get_item_name") GodotMethod!(String, long) getItemName;
		@GodotName("get_item_mesh") GodotMethod!(Mesh, long) getItemMesh;
		@GodotName("get_item_navmesh") GodotMethod!(NavigationMesh, long) getItemNavmesh;
		@GodotName("get_item_shapes") GodotMethod!(Array, long) getItemShapes;
		@GodotName("get_item_preview") GodotMethod!(Texture, long) getItemPreview;
		@GodotName("remove_item") GodotMethod!(void, long) removeItem;
		@GodotName("find_item_by_name") GodotMethod!(long, String) findItemByName;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_item_list") GodotMethod!(PoolIntArray) getItemList;
		@GodotName("get_last_unused_item_id") GodotMethod!(long) getLastUnusedItemId;
	}
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
	@disable new(size_t s);
	/**
	Create a new item in the library, supplied an id.
	*/
	void createItem(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createItem, _godot_object, id);
	}
	/**
	Set the name of the item.
	*/
	void setItemName(in long id, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemName, _godot_object, id, name);
	}
	/**
	Set the mesh of the item.
	*/
	void setItemMesh(in long id, Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemMesh, _godot_object, id, mesh);
	}
	/**
	
	*/
	void setItemNavmesh(in long id, NavigationMesh navmesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemNavmesh, _godot_object, id, navmesh);
	}
	/**
	
	*/
	void setItemShapes(in long id, in Array shapes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemShapes, _godot_object, id, shapes);
	}
	/**
	
	*/
	void setItemPreview(in long id, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemPreview, _godot_object, id, texture);
	}
	/**
	Return the name of the item.
	*/
	String getItemName(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getItemName, _godot_object, id);
	}
	/**
	Return the mesh of the item.
	*/
	Ref!Mesh getItemMesh(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(_classBinding.getItemMesh, _godot_object, id);
	}
	/**
	
	*/
	Ref!NavigationMesh getItemNavmesh(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NavigationMesh)(_classBinding.getItemNavmesh, _godot_object, id);
	}
	/**
	
	*/
	Array getItemShapes(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getItemShapes, _godot_object, id);
	}
	/**
	
	*/
	Ref!Texture getItemPreview(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getItemPreview, _godot_object, id);
	}
	/**
	Remove the item.
	*/
	void removeItem(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeItem, _godot_object, id);
	}
	/**
	
	*/
	long findItemByName(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.findItemByName, _godot_object, name);
	}
	/**
	Clear the library.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Return the list of items.
	*/
	PoolIntArray getItemList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getItemList, _godot_object);
	}
	/**
	Get an unused id for a new item.
	*/
	long getLastUnusedItemId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getLastUnusedItemId, _godot_object);
	}
}
