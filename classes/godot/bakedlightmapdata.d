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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.resource;
/**

*/
@GodotBaseClass struct BakedLightmapData
{
	package(godot) enum string _GODOT_internal_name = "BakedLightmapData";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_user_data") GodotMethod!(Array) _getUserData;
		@GodotName("_set_user_data") GodotMethod!(void, Array) _setUserData;
		@GodotName("add_user") GodotMethod!(void, NodePath, Resource, long, Rect2, long) addUser;
		@GodotName("clear_data") GodotMethod!(void) clearData;
		@GodotName("clear_users") GodotMethod!(void) clearUsers;
		@GodotName("get_bounds") GodotMethod!(AABB) getBounds;
		@GodotName("get_cell_space_transform") GodotMethod!(Transform) getCellSpaceTransform;
		@GodotName("get_cell_subdiv") GodotMethod!(long) getCellSubdiv;
		@GodotName("get_energy") GodotMethod!(double) getEnergy;
		@GodotName("get_octree") GodotMethod!(PoolByteArray) getOctree;
		@GodotName("get_user_count") GodotMethod!(long) getUserCount;
		@GodotName("get_user_lightmap") GodotMethod!(Resource, long) getUserLightmap;
		@GodotName("get_user_path") GodotMethod!(NodePath, long) getUserPath;
		@GodotName("is_interior") GodotMethod!(bool) isInterior;
		@GodotName("set_bounds") GodotMethod!(void, AABB) setBounds;
		@GodotName("set_cell_space_transform") GodotMethod!(void, Transform) setCellSpaceTransform;
		@GodotName("set_cell_subdiv") GodotMethod!(void, long) setCellSubdiv;
		@GodotName("set_energy") GodotMethod!(void, double) setEnergy;
		@GodotName("set_interior") GodotMethod!(void, bool) setInterior;
		@GodotName("set_octree") GodotMethod!(void, PoolByteArray) setOctree;
	}
	/// 
	pragma(inline, true) bool opEquals(in BakedLightmapData other) const
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
	/// Construct a new instance of BakedLightmapData.
	/// Note: use `memnew!BakedLightmapData` instead.
	static BakedLightmapData _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BakedLightmapData");
		if(constructor is null) return typeof(this).init;
		return cast(BakedLightmapData)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Array _getUserData() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_user_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setUserData(in Array data)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_user_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addUser(NodePathArg0)(in NodePathArg0 path, Resource lightmap, in long lightmap_slice, in Rect2 lightmap_uv_rect, in long instance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addUser, _godot_object, path, lightmap, lightmap_slice, lightmap_uv_rect, instance);
	}
	/**
	
	*/
	void clearData()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearData, _godot_object);
	}
	/**
	
	*/
	void clearUsers()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearUsers, _godot_object);
	}
	/**
	
	*/
	AABB getBounds() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.getBounds, _godot_object);
	}
	/**
	
	*/
	Transform getCellSpaceTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getCellSpaceTransform, _godot_object);
	}
	/**
	
	*/
	long getCellSubdiv() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCellSubdiv, _godot_object);
	}
	/**
	
	*/
	double getEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getEnergy, _godot_object);
	}
	/**
	
	*/
	PoolByteArray getOctree() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.getOctree, _godot_object);
	}
	/**
	
	*/
	long getUserCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getUserCount, _godot_object);
	}
	/**
	
	*/
	Ref!Resource getUserLightmap(in long user_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(GDNativeClassBinding.getUserLightmap, _godot_object, user_idx);
	}
	/**
	
	*/
	NodePath getUserPath(in long user_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getUserPath, _godot_object, user_idx);
	}
	/**
	
	*/
	bool isInterior() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isInterior, _godot_object);
	}
	/**
	
	*/
	void setBounds(in AABB bounds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBounds, _godot_object, bounds);
	}
	/**
	
	*/
	void setCellSpaceTransform(in Transform xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellSpaceTransform, _godot_object, xform);
	}
	/**
	
	*/
	void setCellSubdiv(in long cell_subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCellSubdiv, _godot_object, cell_subdiv);
	}
	/**
	
	*/
	void setEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnergy, _godot_object, energy);
	}
	/**
	
	*/
	void setInterior(in bool interior)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInterior, _godot_object, interior);
	}
	/**
	
	*/
	void setOctree(in PoolByteArray octree)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOctree, _godot_object, octree);
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
	@property bool interior()
	{
		return isInterior();
	}
	/// ditto
	@property void interior(bool v)
	{
		setInterior(v);
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
