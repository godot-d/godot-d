/**


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
		@GodotName("get_item_mesh_transform") GodotMethod!(Transform, long) getItemMeshTransform;
		@GodotName("get_item_name") GodotMethod!(String, long) getItemName;
		@GodotName("get_item_navmesh") GodotMethod!(NavigationMesh, long) getItemNavmesh;
		@GodotName("get_item_navmesh_transform") GodotMethod!(Transform, long) getItemNavmeshTransform;
		@GodotName("get_item_preview") GodotMethod!(Texture, long) getItemPreview;
		@GodotName("get_item_shapes") GodotMethod!(Array, long) getItemShapes;
		@GodotName("get_last_unused_item_id") GodotMethod!(long) getLastUnusedItemId;
		@GodotName("remove_item") GodotMethod!(void, long) removeItem;
		@GodotName("set_item_mesh") GodotMethod!(void, long, Mesh) setItemMesh;
		@GodotName("set_item_mesh_transform") GodotMethod!(void, long, Transform) setItemMeshTransform;
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
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	void createItem(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createItem, _godot_object, id);
	}
	/**
	
	*/
	long findItemByName(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.findItemByName, _godot_object, name);
	}
	/**
	
	*/
	PoolIntArray getItemList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getItemList, _godot_object);
	}
	/**
	
	*/
	Ref!Mesh getItemMesh(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getItemMesh, _godot_object, id);
	}
	/**
	
	*/
	Transform getItemMeshTransform(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getItemMeshTransform, _godot_object, id);
	}
	/**
	
	*/
	String getItemName(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getItemName, _godot_object, id);
	}
	/**
	
	*/
	Ref!NavigationMesh getItemNavmesh(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NavigationMesh)(GDNativeClassBinding.getItemNavmesh, _godot_object, id);
	}
	/**
	
	*/
	Transform getItemNavmeshTransform(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getItemNavmeshTransform, _godot_object, id);
	}
	/**
	
	*/
	Ref!Texture getItemPreview(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getItemPreview, _godot_object, id);
	}
	/**
	
	*/
	Array getItemShapes(in long id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getItemShapes, _godot_object, id);
	}
	/**
	
	*/
	long getLastUnusedItemId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLastUnusedItemId, _godot_object);
	}
	/**
	
	*/
	void removeItem(in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeItem, _godot_object, id);
	}
	/**
	
	*/
	void setItemMesh(in long id, Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemMesh, _godot_object, id, mesh);
	}
	/**
	
	*/
	void setItemMeshTransform(in long id, in Transform mesh_transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemMeshTransform, _godot_object, id, mesh_transform);
	}
	/**
	
	*/
	void setItemName(in long id, in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemName, _godot_object, id, name);
	}
	/**
	
	*/
	void setItemNavmesh(in long id, NavigationMesh navmesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemNavmesh, _godot_object, id, navmesh);
	}
	/**
	
	*/
	void setItemNavmeshTransform(in long id, in Transform navmesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemNavmeshTransform, _godot_object, id, navmesh);
	}
	/**
	
	*/
	void setItemPreview(in long id, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemPreview, _godot_object, id, texture);
	}
	/**
	
	*/
	void setItemShapes(in long id, in Array shapes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setItemShapes, _godot_object, id, shapes);
	}
}
