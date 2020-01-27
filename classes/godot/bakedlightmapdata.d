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
	enum string _GODOT_internal_name = "BakedLightmapData";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_get_user_data") GodotMethod!(Array) _getUserData;
		@GodotName("_set_user_data") GodotMethod!(void, Array) _setUserData;
		@GodotName("add_user") GodotMethod!(void, NodePath, Texture, long) addUser;
		@GodotName("clear_users") GodotMethod!(void) clearUsers;
		@GodotName("get_bounds") GodotMethod!(AABB) getBounds;
		@GodotName("get_cell_space_transform") GodotMethod!(Transform) getCellSpaceTransform;
		@GodotName("get_cell_subdiv") GodotMethod!(long) getCellSubdiv;
		@GodotName("get_energy") GodotMethod!(double) getEnergy;
		@GodotName("get_octree") GodotMethod!(PoolByteArray) getOctree;
		@GodotName("get_user_count") GodotMethod!(long) getUserCount;
		@GodotName("get_user_lightmap") GodotMethod!(Texture, long) getUserLightmap;
		@GodotName("get_user_path") GodotMethod!(NodePath, long) getUserPath;
		@GodotName("set_bounds") GodotMethod!(void, AABB) setBounds;
		@GodotName("set_cell_space_transform") GodotMethod!(void, Transform) setCellSpaceTransform;
		@GodotName("set_cell_subdiv") GodotMethod!(void, long) setCellSubdiv;
		@GodotName("set_energy") GodotMethod!(void, double) setEnergy;
		@GodotName("set_octree") GodotMethod!(void, PoolByteArray) setOctree;
	}
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
	void addUser(NodePathArg0)(in NodePathArg0 path, Texture lightmap, in long instance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addUser, _godot_object, path, lightmap, instance);
	}
	/**
	
	*/
	void clearUsers()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearUsers, _godot_object);
	}
	/**
	
	*/
	AABB getBounds() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.getBounds, _godot_object);
	}
	/**
	
	*/
	Transform getCellSpaceTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getCellSpaceTransform, _godot_object);
	}
	/**
	
	*/
	long getCellSubdiv() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCellSubdiv, _godot_object);
	}
	/**
	
	*/
	double getEnergy() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getEnergy, _godot_object);
	}
	/**
	
	*/
	PoolByteArray getOctree() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.getOctree, _godot_object);
	}
	/**
	
	*/
	long getUserCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getUserCount, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getUserLightmap(in long user_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getUserLightmap, _godot_object, user_idx);
	}
	/**
	
	*/
	NodePath getUserPath(in long user_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getUserPath, _godot_object, user_idx);
	}
	/**
	
	*/
	void setBounds(in AABB bounds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBounds, _godot_object, bounds);
	}
	/**
	
	*/
	void setCellSpaceTransform(in Transform xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCellSpaceTransform, _godot_object, xform);
	}
	/**
	
	*/
	void setCellSubdiv(in long cell_subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCellSubdiv, _godot_object, cell_subdiv);
	}
	/**
	
	*/
	void setEnergy(in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnergy, _godot_object, energy);
	}
	/**
	
	*/
	void setOctree(in PoolByteArray octree)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOctree, _godot_object, octree);
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
