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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.mesh;
import godot.navigationmesh;
import godot.texture;
/**
Library of meshes.

A library of meshes. Contains a list of $(D Mesh) resources, each with a name and ID. Each item can also include collision and navigation shapes. This resource is used in $(D GridMap).
*/
@GodotBaseClass struct MeshLibrary
{
	package(godot) enum string _GODOT_internal_name = "MeshLibrary";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("create_item") GodotMethod!(void, long) createItem;
		@GodotName("find_item_by_name") GodotMethod!(long, String) findItemByName;
		@GodotName("get_item_list") GodotMethod!(PoolIntArray) getItemList;
		@GodotName("get_item_mesh") GodotMethod!(Mesh, long) getItemMesh;
		@GodotName("get_item_name") GodotMethod!(String, long) getItemName;
		@GodotName("get_item_navmesh") GodotMethod!(NavigationMesh, long) getItemNavmesh;
		@GodotName("get_item_navmesh_transform") GodotMethod!(Transform, long) getItemNavmeshTransform;
		@GodotName("get_item_preview") GodotMethod!(Texture, long) getItemPreview;
		@GodotName("get_item_shapes") GodotMethod!(Array, long) getItemShapes;
		@GodotName("get_last_unused_item_id") GodotMethod!(long) getLastUnusedItemId;
		@GodotName("remove_item") GodotMethod!(void, long) removeItem;
		@GodotName("set_item_mesh") GodotMethod!(void, long, Mesh) setItemMesh;
		@GodotName("set_item_name") GodotMethod!(void, long, String) setItemName;
		@GodotName("set_item_navmesh") GodotMethod!(void, long, NavigationMesh) setItemNavmesh;
		@GodotName("set_item_navmesh_transform") GodotMethod!(void, long, Transform) setItemNavmeshTransform;
		@GodotName("set_item_preview") GodotMethod!(void, long, Texture) setItemPreview;
		@GodotName("set_item_shapes") GodotMethod!(void, long, Array) setItemShapes;
	}
	/// 
	pragma(inline, true) bool opEquals(in MeshLibrary other) const
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
	/// Construct a new instance of MeshLibrary.
	/// Note: use `memnew!MeshLibrary` instead.
	static MeshLibrary _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MeshLibrary");
		if(constructor is null) return typeof(this).init;
		return cast(MeshLibrary)(constructor());
	}
	@disable new(size_t s);
	/**
	Clears the library.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	Creates a new item in the library with the given ID.
	You can get an unused ID from $(D getLastUnusedItemId).
	*/
	void createItem(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createItem, _godot_object, id);
	}
	/**
	Returns the first item with the given name.
	*/
	long findItemByName(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.findItemByName, _godot_object, name);
	}
	/**
	Returns the list of item IDs in use.
	*/
	PoolIntArray getItemList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getItemList, _godot_object);
	}
	/**
	Returns the item's mesh.
	*/
	Ref!Mesh getItemMesh(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getItemMesh, _godot_object, id);
	}
	/**
	Returns the item's name.
	*/
	String getItemName(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getItemName, _godot_object, id);
	}
	/**
	Returns the item's navigation mesh.
	*/
	Ref!NavigationMesh getItemNavmesh(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NavigationMesh)(GDNativeClassBinding.getItemNavmesh, _godot_object, id);
	}
	/**
	Returns the transform applied to the item's navigation mesh.
	*/
	Transform getItemNavmeshTransform(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getItemNavmeshTransform, _godot_object, id);
	}
	/**
	When running in the editor, returns a generated item preview (a 3D rendering in isometric perspective). When used in a running project, returns the manually-defined item preview which can be set using $(D setItemPreview). Returns an empty $(D Texture) if no preview was manually set in a running project.
	*/
	Ref!Texture getItemPreview(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getItemPreview, _godot_object, id);
	}
	/**
	Returns an item's collision shapes.
	The array consists of each $(D Shape) followed by its $(D Transform).
	*/
	Array getItemShapes(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getItemShapes, _godot_object, id);
	}
	/**
	Gets an unused ID for a new item.
	*/
	long getLastUnusedItemId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLastUnusedItemId, _godot_object);
	}
	/**
	Removes the item.
	*/
	void removeItem(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeItem, _godot_object, id);
	}
	/**
	Sets the item's mesh.
	*/
	void setItemMesh(in long id, Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemMesh, _godot_object, id, mesh);
	}
	/**
	Sets the item's name.
	This name is shown in the editor. It can also be used to look up the item later using $(D findItemByName).
	*/
	void setItemName(in long id, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemName, _godot_object, id, name);
	}
	/**
	Sets the item's navigation mesh.
	*/
	void setItemNavmesh(in long id, NavigationMesh navmesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemNavmesh, _godot_object, id, navmesh);
	}
	/**
	Sets the transform to apply to the item's navigation mesh.
	*/
	void setItemNavmeshTransform(in long id, in Transform navmesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemNavmeshTransform, _godot_object, id, navmesh);
	}
	/**
	Sets a texture to use as the item's preview icon in the editor.
	*/
	void setItemPreview(in long id, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemPreview, _godot_object, id, texture);
	}
	/**
	Sets an item's collision shapes.
	The array should consist of $(D Shape) objects, each followed by a $(D Transform) that will be applied to it. For shapes that should not have a transform, use $(D constant Transform.IDENTITY).
	*/
	void setItemShapes(in long id, in Array shapes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemShapes, _godot_object, id, shapes);
	}
}
