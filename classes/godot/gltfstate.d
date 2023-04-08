/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gltfstate;
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
import godot.animationplayer;
import godot.node;
/**

*/
@GodotBaseClass struct GLTFState
{
	package(godot) enum string _GODOT_internal_name = "GLTFState";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_accessors") GodotMethod!(Array) getAccessors;
		@GodotName("get_animation_player") GodotMethod!(AnimationPlayer, long) getAnimationPlayer;
		@GodotName("get_animation_players_count") GodotMethod!(long, long) getAnimationPlayersCount;
		@GodotName("get_animations") GodotMethod!(Array) getAnimations;
		@GodotName("get_buffer_views") GodotMethod!(Array) getBufferViews;
		@GodotName("get_buffers") GodotMethod!(Array) getBuffers;
		@GodotName("get_cameras") GodotMethod!(Array) getCameras;
		@GodotName("get_glb_data") GodotMethod!(PoolByteArray) getGlbData;
		@GodotName("get_images") GodotMethod!(Array) getImages;
		@GodotName("get_json") GodotMethod!(Dictionary) getJson;
		@GodotName("get_lights") GodotMethod!(Array) getLights;
		@GodotName("get_major_version") GodotMethod!(long) getMajorVersion;
		@GodotName("get_materials") GodotMethod!(Array) getMaterials;
		@GodotName("get_meshes") GodotMethod!(Array) getMeshes;
		@GodotName("get_minor_version") GodotMethod!(long) getMinorVersion;
		@GodotName("get_nodes") GodotMethod!(Array) getNodes;
		@GodotName("get_root_nodes") GodotMethod!(Array) getRootNodes;
		@GodotName("get_scene_name") GodotMethod!(String) getSceneName;
		@GodotName("get_scene_node") GodotMethod!(Node, long) getSceneNode;
		@GodotName("get_skeleton_to_node") GodotMethod!(Dictionary) getSkeletonToNode;
		@GodotName("get_skeletons") GodotMethod!(Array) getSkeletons;
		@GodotName("get_skins") GodotMethod!(Array) getSkins;
		@GodotName("get_textures") GodotMethod!(Array) getTextures;
		@GodotName("get_unique_animation_names") GodotMethod!(Array) getUniqueAnimationNames;
		@GodotName("get_unique_names") GodotMethod!(Array) getUniqueNames;
		@GodotName("get_use_named_skin_binds") GodotMethod!(bool) getUseNamedSkinBinds;
		@GodotName("set_accessors") GodotMethod!(void, Array) setAccessors;
		@GodotName("set_animations") GodotMethod!(void, Array) setAnimations;
		@GodotName("set_buffer_views") GodotMethod!(void, Array) setBufferViews;
		@GodotName("set_buffers") GodotMethod!(void, Array) setBuffers;
		@GodotName("set_cameras") GodotMethod!(void, Array) setCameras;
		@GodotName("set_glb_data") GodotMethod!(void, PoolByteArray) setGlbData;
		@GodotName("set_images") GodotMethod!(void, Array) setImages;
		@GodotName("set_json") GodotMethod!(void, Dictionary) setJson;
		@GodotName("set_lights") GodotMethod!(void, Array) setLights;
		@GodotName("set_major_version") GodotMethod!(void, long) setMajorVersion;
		@GodotName("set_materials") GodotMethod!(void, Array) setMaterials;
		@GodotName("set_meshes") GodotMethod!(void, Array) setMeshes;
		@GodotName("set_minor_version") GodotMethod!(void, long) setMinorVersion;
		@GodotName("set_nodes") GodotMethod!(void, Array) setNodes;
		@GodotName("set_root_nodes") GodotMethod!(void, Array) setRootNodes;
		@GodotName("set_scene_name") GodotMethod!(void, String) setSceneName;
		@GodotName("set_skeleton_to_node") GodotMethod!(void, Dictionary) setSkeletonToNode;
		@GodotName("set_skeletons") GodotMethod!(void, Array) setSkeletons;
		@GodotName("set_skins") GodotMethod!(void, Array) setSkins;
		@GodotName("set_textures") GodotMethod!(void, Array) setTextures;
		@GodotName("set_unique_animation_names") GodotMethod!(void, Array) setUniqueAnimationNames;
		@GodotName("set_unique_names") GodotMethod!(void, Array) setUniqueNames;
		@GodotName("set_use_named_skin_binds") GodotMethod!(void, bool) setUseNamedSkinBinds;
	}
	/// 
	pragma(inline, true) bool opEquals(in GLTFState other) const
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
	/// Construct a new instance of GLTFState.
	/// Note: use `memnew!GLTFState` instead.
	static GLTFState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GLTFState");
		if(constructor is null) return typeof(this).init;
		return cast(GLTFState)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Array getAccessors()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getAccessors, _godot_object);
	}
	/**
	
	*/
	AnimationPlayer getAnimationPlayer(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationPlayer)(GDNativeClassBinding.getAnimationPlayer, _godot_object, idx);
	}
	/**
	
	*/
	long getAnimationPlayersCount(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAnimationPlayersCount, _godot_object, idx);
	}
	/**
	
	*/
	Array getAnimations()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getAnimations, _godot_object);
	}
	/**
	
	*/
	Array getBufferViews()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getBufferViews, _godot_object);
	}
	/**
	
	*/
	Array getBuffers()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getBuffers, _godot_object);
	}
	/**
	
	*/
	Array getCameras()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getCameras, _godot_object);
	}
	/**
	
	*/
	PoolByteArray getGlbData()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.getGlbData, _godot_object);
	}
	/**
	
	*/
	Array getImages()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getImages, _godot_object);
	}
	/**
	
	*/
	Dictionary getJson()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getJson, _godot_object);
	}
	/**
	
	*/
	Array getLights()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getLights, _godot_object);
	}
	/**
	
	*/
	long getMajorVersion()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMajorVersion, _godot_object);
	}
	/**
	
	*/
	Array getMaterials()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getMaterials, _godot_object);
	}
	/**
	
	*/
	Array getMeshes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getMeshes, _godot_object);
	}
	/**
	
	*/
	long getMinorVersion()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMinorVersion, _godot_object);
	}
	/**
	
	*/
	Array getNodes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getNodes, _godot_object);
	}
	/**
	
	*/
	Array getRootNodes()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getRootNodes, _godot_object);
	}
	/**
	
	*/
	String getSceneName()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getSceneName, _godot_object);
	}
	/**
	
	*/
	Node getSceneNode(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.getSceneNode, _godot_object, idx);
	}
	/**
	
	*/
	Dictionary getSkeletonToNode()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getSkeletonToNode, _godot_object);
	}
	/**
	
	*/
	Array getSkeletons()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getSkeletons, _godot_object);
	}
	/**
	
	*/
	Array getSkins()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getSkins, _godot_object);
	}
	/**
	
	*/
	Array getTextures()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getTextures, _godot_object);
	}
	/**
	
	*/
	Array getUniqueAnimationNames()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getUniqueAnimationNames, _godot_object);
	}
	/**
	
	*/
	Array getUniqueNames()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getUniqueNames, _godot_object);
	}
	/**
	
	*/
	bool getUseNamedSkinBinds()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseNamedSkinBinds, _godot_object);
	}
	/**
	
	*/
	void setAccessors(in Array accessors)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAccessors, _godot_object, accessors);
	}
	/**
	
	*/
	void setAnimations(in Array animations)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnimations, _godot_object, animations);
	}
	/**
	
	*/
	void setBufferViews(in Array buffer_views)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBufferViews, _godot_object, buffer_views);
	}
	/**
	
	*/
	void setBuffers(in Array buffers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBuffers, _godot_object, buffers);
	}
	/**
	
	*/
	void setCameras(in Array cameras)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCameras, _godot_object, cameras);
	}
	/**
	
	*/
	void setGlbData(in PoolByteArray glb_data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlbData, _godot_object, glb_data);
	}
	/**
	
	*/
	void setImages(in Array images)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setImages, _godot_object, images);
	}
	/**
	
	*/
	void setJson(in Dictionary json)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setJson, _godot_object, json);
	}
	/**
	
	*/
	void setLights(in Array lights)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLights, _godot_object, lights);
	}
	/**
	
	*/
	void setMajorVersion(in long major_version)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMajorVersion, _godot_object, major_version);
	}
	/**
	
	*/
	void setMaterials(in Array materials)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaterials, _godot_object, materials);
	}
	/**
	
	*/
	void setMeshes(in Array meshes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMeshes, _godot_object, meshes);
	}
	/**
	
	*/
	void setMinorVersion(in long minor_version)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMinorVersion, _godot_object, minor_version);
	}
	/**
	
	*/
	void setNodes(in Array nodes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNodes, _godot_object, nodes);
	}
	/**
	
	*/
	void setRootNodes(in Array root_nodes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRootNodes, _godot_object, root_nodes);
	}
	/**
	
	*/
	void setSceneName(in String scene_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSceneName, _godot_object, scene_name);
	}
	/**
	
	*/
	void setSkeletonToNode(in Dictionary skeleton_to_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkeletonToNode, _godot_object, skeleton_to_node);
	}
	/**
	
	*/
	void setSkeletons(in Array skeletons)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkeletons, _godot_object, skeletons);
	}
	/**
	
	*/
	void setSkins(in Array skins)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkins, _godot_object, skins);
	}
	/**
	
	*/
	void setTextures(in Array textures)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextures, _godot_object, textures);
	}
	/**
	
	*/
	void setUniqueAnimationNames(in Array unique_animation_names)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUniqueAnimationNames, _godot_object, unique_animation_names);
	}
	/**
	
	*/
	void setUniqueNames(in Array unique_names)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUniqueNames, _godot_object, unique_names);
	}
	/**
	
	*/
	void setUseNamedSkinBinds(in bool use_named_skin_binds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseNamedSkinBinds, _godot_object, use_named_skin_binds);
	}
	/**
	
	*/
	@property Array accessors()
	{
		return getAccessors();
	}
	/// ditto
	@property void accessors(Array v)
	{
		setAccessors(v);
	}
	/**
	
	*/
	@property Array animations()
	{
		return getAnimations();
	}
	/// ditto
	@property void animations(Array v)
	{
		setAnimations(v);
	}
	/**
	
	*/
	@property Array bufferViews()
	{
		return getBufferViews();
	}
	/// ditto
	@property void bufferViews(Array v)
	{
		setBufferViews(v);
	}
	/**
	
	*/
	@property Array buffers()
	{
		return getBuffers();
	}
	/// ditto
	@property void buffers(Array v)
	{
		setBuffers(v);
	}
	/**
	
	*/
	@property Array cameras()
	{
		return getCameras();
	}
	/// ditto
	@property void cameras(Array v)
	{
		setCameras(v);
	}
	/**
	
	*/
	@property PoolByteArray glbData()
	{
		return getGlbData();
	}
	/// ditto
	@property void glbData(PoolByteArray v)
	{
		setGlbData(v);
	}
	/**
	
	*/
	@property Array images()
	{
		return getImages();
	}
	/// ditto
	@property void images(Array v)
	{
		setImages(v);
	}
	/**
	
	*/
	@property Dictionary json()
	{
		return getJson();
	}
	/// ditto
	@property void json(Dictionary v)
	{
		setJson(v);
	}
	/**
	
	*/
	@property Array lights()
	{
		return getLights();
	}
	/// ditto
	@property void lights(Array v)
	{
		setLights(v);
	}
	/**
	
	*/
	@property long majorVersion()
	{
		return getMajorVersion();
	}
	/// ditto
	@property void majorVersion(long v)
	{
		setMajorVersion(v);
	}
	/**
	
	*/
	@property Array materials()
	{
		return getMaterials();
	}
	/// ditto
	@property void materials(Array v)
	{
		setMaterials(v);
	}
	/**
	
	*/
	@property Array meshes()
	{
		return getMeshes();
	}
	/// ditto
	@property void meshes(Array v)
	{
		setMeshes(v);
	}
	/**
	
	*/
	@property long minorVersion()
	{
		return getMinorVersion();
	}
	/// ditto
	@property void minorVersion(long v)
	{
		setMinorVersion(v);
	}
	/**
	
	*/
	@property Array nodes()
	{
		return getNodes();
	}
	/// ditto
	@property void nodes(Array v)
	{
		setNodes(v);
	}
	/**
	
	*/
	@property Array rootNodes()
	{
		return getRootNodes();
	}
	/// ditto
	@property void rootNodes(Array v)
	{
		setRootNodes(v);
	}
	/**
	
	*/
	@property String sceneName()
	{
		return getSceneName();
	}
	/// ditto
	@property void sceneName(String v)
	{
		setSceneName(v);
	}
	/**
	
	*/
	@property Dictionary skeletonToNode()
	{
		return getSkeletonToNode();
	}
	/// ditto
	@property void skeletonToNode(Dictionary v)
	{
		setSkeletonToNode(v);
	}
	/**
	
	*/
	@property Array skeletons()
	{
		return getSkeletons();
	}
	/// ditto
	@property void skeletons(Array v)
	{
		setSkeletons(v);
	}
	/**
	
	*/
	@property Array skins()
	{
		return getSkins();
	}
	/// ditto
	@property void skins(Array v)
	{
		setSkins(v);
	}
	/**
	
	*/
	@property Array textures()
	{
		return getTextures();
	}
	/// ditto
	@property void textures(Array v)
	{
		setTextures(v);
	}
	/**
	
	*/
	@property Array uniqueAnimationNames()
	{
		return getUniqueAnimationNames();
	}
	/// ditto
	@property void uniqueAnimationNames(Array v)
	{
		setUniqueAnimationNames(v);
	}
	/**
	
	*/
	@property Array uniqueNames()
	{
		return getUniqueNames();
	}
	/// ditto
	@property void uniqueNames(Array v)
	{
		setUniqueNames(v);
	}
	/**
	
	*/
	@property bool useNamedSkinBinds()
	{
		return getUseNamedSkinBinds();
	}
	/// ditto
	@property void useNamedSkinBinds(bool v)
	{
		setUseNamedSkinBinds(v);
	}
}
