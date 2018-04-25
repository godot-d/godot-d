/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.bakedlightmapdata;
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
import godot.texture;
/**

*/
@GodotBaseClass struct BakedLightmapData
{
	static immutable string _GODOT_internal_name = "BakedLightmapData";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in BakedLightmapData other) const { return _godot_object.ptr is other._godot_object.ptr; }
	BakedLightmapData opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static BakedLightmapData _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BakedLightmapData");
		if(constructor is null) return typeof(this).init;
		return cast(BakedLightmapData)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, Array) _GODOT__set_user_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_user_data") = _GODOT__set_user_data;
	/**
	
	*/
	void _setUserData(in Array data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_user_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_user_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_user_data") = _GODOT__get_user_data;
	/**
	
	*/
	Array _getUserData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_user_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	package(godot) static GodotMethod!(void, AABB) _GODOT_set_bounds;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bounds") = _GODOT_set_bounds;
	/**
	
	*/
	void setBounds(in AABB bounds)
	{
		_GODOT_set_bounds.bind("BakedLightmapData", "set_bounds");
		ptrcall!(void)(_GODOT_set_bounds, _godot_object, bounds);
	}
	package(godot) static GodotMethod!(AABB) _GODOT_get_bounds;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bounds") = _GODOT_get_bounds;
	/**
	
	*/
	AABB getBounds() const
	{
		_GODOT_get_bounds.bind("BakedLightmapData", "get_bounds");
		return ptrcall!(AABB)(_GODOT_get_bounds, _godot_object);
	}
	package(godot) static GodotMethod!(void, Transform) _GODOT_set_cell_space_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_space_transform") = _GODOT_set_cell_space_transform;
	/**
	
	*/
	void setCellSpaceTransform(in Transform xform)
	{
		_GODOT_set_cell_space_transform.bind("BakedLightmapData", "set_cell_space_transform");
		ptrcall!(void)(_GODOT_set_cell_space_transform, _godot_object, xform);
	}
	package(godot) static GodotMethod!(Transform) _GODOT_get_cell_space_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_space_transform") = _GODOT_get_cell_space_transform;
	/**
	
	*/
	Transform getCellSpaceTransform() const
	{
		_GODOT_get_cell_space_transform.bind("BakedLightmapData", "get_cell_space_transform");
		return ptrcall!(Transform)(_GODOT_get_cell_space_transform, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_cell_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cell_subdiv") = _GODOT_set_cell_subdiv;
	/**
	
	*/
	void setCellSubdiv(in long cell_subdiv)
	{
		_GODOT_set_cell_subdiv.bind("BakedLightmapData", "set_cell_subdiv");
		ptrcall!(void)(_GODOT_set_cell_subdiv, _godot_object, cell_subdiv);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_cell_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cell_subdiv") = _GODOT_get_cell_subdiv;
	/**
	
	*/
	long getCellSubdiv() const
	{
		_GODOT_get_cell_subdiv.bind("BakedLightmapData", "get_cell_subdiv");
		return ptrcall!(long)(_GODOT_get_cell_subdiv, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolByteArray) _GODOT_set_octree;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_octree") = _GODOT_set_octree;
	/**
	
	*/
	void setOctree(in PoolByteArray octree)
	{
		_GODOT_set_octree.bind("BakedLightmapData", "set_octree");
		ptrcall!(void)(_GODOT_set_octree, _godot_object, octree);
	}
	package(godot) static GodotMethod!(PoolByteArray) _GODOT_get_octree;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_octree") = _GODOT_get_octree;
	/**
	
	*/
	PoolByteArray getOctree() const
	{
		_GODOT_get_octree.bind("BakedLightmapData", "get_octree");
		return ptrcall!(PoolByteArray)(_GODOT_get_octree, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_energy") = _GODOT_set_energy;
	/**
	
	*/
	void setEnergy(in double energy)
	{
		_GODOT_set_energy.bind("BakedLightmapData", "set_energy");
		ptrcall!(void)(_GODOT_set_energy, _godot_object, energy);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_energy") = _GODOT_get_energy;
	/**
	
	*/
	double getEnergy() const
	{
		_GODOT_get_energy.bind("BakedLightmapData", "get_energy");
		return ptrcall!(double)(_GODOT_get_energy, _godot_object);
	}
	package(godot) static GodotMethod!(void, NodePath, Texture, long) _GODOT_add_user;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_user") = _GODOT_add_user;
	/**
	
	*/
	void addUser(NodePathArg0)(in NodePathArg0 path, Texture lightmap, in long instance)
	{
		_GODOT_add_user.bind("BakedLightmapData", "add_user");
		ptrcall!(void)(_GODOT_add_user, _godot_object, path, lightmap, instance);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_user_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_user_count") = _GODOT_get_user_count;
	/**
	
	*/
	long getUserCount() const
	{
		_GODOT_get_user_count.bind("BakedLightmapData", "get_user_count");
		return ptrcall!(long)(_GODOT_get_user_count, _godot_object);
	}
	package(godot) static GodotMethod!(NodePath, long) _GODOT_get_user_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_user_path") = _GODOT_get_user_path;
	/**
	
	*/
	NodePath getUserPath(in long user_idx) const
	{
		_GODOT_get_user_path.bind("BakedLightmapData", "get_user_path");
		return ptrcall!(NodePath)(_GODOT_get_user_path, _godot_object, user_idx);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_user_lightmap;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_user_lightmap") = _GODOT_get_user_lightmap;
	/**
	
	*/
	Ref!Texture getUserLightmap(in long user_idx) const
	{
		_GODOT_get_user_lightmap.bind("BakedLightmapData", "get_user_lightmap");
		return ptrcall!(Texture)(_GODOT_get_user_lightmap, _godot_object, user_idx);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_users;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_users") = _GODOT_clear_users;
	/**
	
	*/
	void clearUsers()
	{
		_GODOT_clear_users.bind("BakedLightmapData", "clear_users");
		ptrcall!(void)(_GODOT_clear_users, _godot_object);
	}
	/**
	
	*/
	@property AABB bounds()
	{
		return getBounds();
	}
	/// ditto
	@property void bounds(AABB v)
	{
		setBounds(v);
	}
	/**
	
	*/
	@property Transform cellSpaceTransform()
	{
		return getCellSpaceTransform();
	}
	/// ditto
	@property void cellSpaceTransform(Transform v)
	{
		setCellSpaceTransform(v);
	}
	/**
	
	*/
	@property long cellSubdiv()
	{
		return getCellSubdiv();
	}
	/// ditto
	@property void cellSubdiv(long v)
	{
		setCellSubdiv(v);
	}
	/**
	
	*/
	@property double energy()
	{
		return getEnergy();
	}
	/// ditto
	@property void energy(double v)
	{
		setEnergy(v);
	}
	/**
	
	*/
	@property PoolByteArray octree()
	{
		return getOctree();
	}
	/// ditto
	@property void octree(PoolByteArray v)
	{
		setOctree(v);
	}
	/**
	
	*/
	@property Array userData()
	{
		return _getUserData();
	}
	/// ditto
	@property void userData(Array v)
	{
		_setUserData(v);
	}
}
