/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorspatialgizmo;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.spatialgizmo;
import godot.trianglemesh;
import godot.material;
import godot.mesh;
import godot.skinreference;
import godot.editorspatialgizmoplugin;
import godot.spatial;
import godot.camera;
import godot.node;
/**

*/
@GodotBaseClass struct EditorSpatialGizmo
{
	package(godot) enum string _GODOT_internal_name = "EditorSpatialGizmo";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ SpatialGizmo _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_collision_segments") GodotMethod!(void, PoolVector3Array) addCollisionSegments;
		@GodotName("add_collision_triangles") GodotMethod!(void, TriangleMesh) addCollisionTriangles;
		@GodotName("add_handles") GodotMethod!(void, PoolVector3Array, Material, bool, bool) addHandles;
		@GodotName("add_lines") GodotMethod!(void, PoolVector3Array, Material, bool, Color) addLines;
		@GodotName("add_mesh") GodotMethod!(void, Mesh, bool, SkinReference, Material) addMesh;
		@GodotName("add_unscaled_billboard") GodotMethod!(void, Material, double, Color) addUnscaledBillboard;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("commit_handle") GodotMethod!(void, long, Variant, bool) commitHandle;
		@GodotName("get_handle_name") GodotMethod!(String, long) getHandleName;
		@GodotName("get_handle_value") GodotMethod!(Variant, long) getHandleValue;
		@GodotName("get_plugin") GodotMethod!(EditorSpatialGizmoPlugin) getPlugin;
		@GodotName("get_spatial_node") GodotMethod!(Spatial) getSpatialNode;
		@GodotName("is_handle_highlighted") GodotMethod!(bool, long) isHandleHighlighted;
		@GodotName("redraw") GodotMethod!(void) redraw;
		@GodotName("set_handle") GodotMethod!(void, long, Camera, Vector2) setHandle;
		@GodotName("set_hidden") GodotMethod!(void, bool) setHidden;
		@GodotName("set_spatial_node") GodotMethod!(void, Node) setSpatialNode;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorSpatialGizmo other) const
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
	/// Construct a new instance of EditorSpatialGizmo.
	/// Note: use `memnew!EditorSpatialGizmo` instead.
	static EditorSpatialGizmo _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSpatialGizmo");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSpatialGizmo)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void addCollisionSegments(in PoolVector3Array segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCollisionSegments, _godot_object, segments);
	}
	/**
	
	*/
	void addCollisionTriangles(TriangleMesh triangles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCollisionTriangles, _godot_object, triangles);
	}
	/**
	
	*/
	void addHandles(in PoolVector3Array handles, Material material, in bool billboard = false, in bool secondary = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addHandles, _godot_object, handles, material, billboard, secondary);
	}
	/**
	
	*/
	void addLines(in PoolVector3Array lines, Material material, in bool billboard = false, in Color modulate = Color(1,1,1,1))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addLines, _godot_object, lines, material, billboard, modulate);
	}
	/**
	
	*/
	void addMesh(Mesh mesh, in bool billboard = false, SkinReference skeleton = SkinReference.init, Material material = Material.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addMesh, _godot_object, mesh, billboard, skeleton, material);
	}
	/**
	
	*/
	void addUnscaledBillboard(Material material, in double default_scale = 1, in Color modulate = Color(1,1,1,1))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addUnscaledBillboard, _godot_object, material, default_scale, modulate);
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
	void commitHandle(VariantArg1)(in long index, in VariantArg1 restore, in bool cancel)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(index);
		_GODOT_args.append(restore);
		_GODOT_args.append(cancel);
		String _GODOT_method_name = String("commit_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	String getHandleName(in long index)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	Variant getHandleValue(in long index)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_value");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Ref!EditorSpatialGizmoPlugin getPlugin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorSpatialGizmoPlugin)(GDNativeClassBinding.getPlugin, _godot_object);
	}
	/**
	
	*/
	Spatial getSpatialNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Spatial)(GDNativeClassBinding.getSpatialNode, _godot_object);
	}
	/**
	
	*/
	bool isHandleHighlighted(in long index)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(index);
		String _GODOT_method_name = String("is_handle_highlighted");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void redraw()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("redraw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setHandle(in long index, Camera camera, in Vector2 point)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(index);
		_GODOT_args.append(camera);
		_GODOT_args.append(point);
		String _GODOT_method_name = String("set_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setHidden(in bool hidden)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHidden, _godot_object, hidden);
	}
	/**
	
	*/
	void setSpatialNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpatialNode, _godot_object, node);
	}
}
