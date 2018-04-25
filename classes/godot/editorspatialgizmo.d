/**
Custom gizmo for editing Spatial objects.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorspatialgizmo;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatialgizmo;
import godot.camera;
import godot.material;
import godot.arraymesh;
import godot.trianglemesh;
/**
Custom gizmo for editing Spatial objects.

Custom gizmo that is used for providing custom visualization and editing (handles) for 3D Spatial objects. These are created by $(D EditorPlugin.createSpatialGizmo).
*/
@GodotBaseClass struct EditorSpatialGizmo
{
	static immutable string _GODOT_internal_name = "EditorSpatialGizmo";
public:
@nogc nothrow:
	union { godot_object _godot_object; SpatialGizmo _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EditorSpatialGizmo other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorSpatialGizmo opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorSpatialGizmo _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSpatialGizmo");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSpatialGizmo)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void) _GODOT_redraw;
	package(godot) alias _GODOT_methodBindInfo(string name : "redraw") = _GODOT_redraw;
	/**
	This function is called when the Spatial this gizmo refers to changes (the $(D Spatial.updateGizmo) is called).
	*/
	void redraw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("redraw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_handle_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_handle_name") = _GODOT_get_handle_name;
	/**
	Get the name of an edited handle (handles must have been previously added by $(D addHandles)).
	Handles can be named for reference to the user when editing.
	*/
	String getHandleName(in long index)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	package(godot) static GodotMethod!(Variant, long) _GODOT_get_handle_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_handle_value") = _GODOT_get_handle_value;
	/**
	Get actual value of a handle. This value can be anything and used for eventually undoing the motion when calling $(D commitHandle)
	*/
	Variant getHandleValue(in long index)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_value");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long, Camera, Vector2) _GODOT_set_handle;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_handle") = _GODOT_set_handle;
	/**
	This function is used when the user drags a gizmo handle (previously added with $(D addHandles)) in screen coordinates.
	The $(D Camera) is also provided so screen coordinates can be converted to raycasts.
	*/
	void setHandle(in long index, Camera camera, in Vector2 point)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		_GODOT_args.append(camera);
		_GODOT_args.append(point);
		String _GODOT_method_name = String("set_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, long, Variant, bool) _GODOT_commit_handle;
	package(godot) alias _GODOT_methodBindInfo(string name : "commit_handle") = _GODOT_commit_handle;
	/**
	Commit a handle being edited (handles must have been previously added by $(D addHandles)).
	If the cancel parameter is true, an option to restore the edited value to the original is provided.
	*/
	void commitHandle(VariantArg1)(in long index, in VariantArg1 restore, in bool cancel)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		_GODOT_args.append(restore);
		_GODOT_args.append(cancel);
		String _GODOT_method_name = String("commit_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array, Material, bool) _GODOT_add_lines;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_lines") = _GODOT_add_lines;
	/**
	Add lines to the gizmo (as sets of 2 points), with a given material. The lines are used for visualizing the gizmo. Call this function during $(D redraw).
	*/
	void addLines(in PoolVector3Array lines, Material material, in bool billboard = false)
	{
		_GODOT_add_lines.bind("EditorSpatialGizmo", "add_lines");
		ptrcall!(void)(_GODOT_add_lines, _godot_object, lines, material, billboard);
	}
	package(godot) static GodotMethod!(void, ArrayMesh, bool, RID) _GODOT_add_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_mesh") = _GODOT_add_mesh;
	/**
	
	*/
	void addMesh(ArrayMesh mesh, in bool billboard = false, in RID skeleton = RID.init)
	{
		_GODOT_add_mesh.bind("EditorSpatialGizmo", "add_mesh");
		ptrcall!(void)(_GODOT_add_mesh, _godot_object, mesh, billboard, skeleton);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array) _GODOT_add_collision_segments;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_collision_segments") = _GODOT_add_collision_segments;
	/**
	
	*/
	void addCollisionSegments(in PoolVector3Array segments)
	{
		_GODOT_add_collision_segments.bind("EditorSpatialGizmo", "add_collision_segments");
		ptrcall!(void)(_GODOT_add_collision_segments, _godot_object, segments);
	}
	package(godot) static GodotMethod!(void, TriangleMesh, AABB) _GODOT_add_collision_triangles;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_collision_triangles") = _GODOT_add_collision_triangles;
	/**
	Add collision triangles to the gizmo for picking. A $(D TriangleMesh) can be generated from a regular $(D Mesh) too. Call this function during $(D redraw).
	*/
	void addCollisionTriangles(TriangleMesh triangles, in AABB bounds)
	{
		_GODOT_add_collision_triangles.bind("EditorSpatialGizmo", "add_collision_triangles");
		ptrcall!(void)(_GODOT_add_collision_triangles, _godot_object, triangles, bounds);
	}
	package(godot) static GodotMethod!(void, Material, double) _GODOT_add_unscaled_billboard;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_unscaled_billboard") = _GODOT_add_unscaled_billboard;
	/**
	Add an unscaled billboard for visualization. Call this function during $(D redraw).
	*/
	void addUnscaledBillboard(Material material, in double default_scale = 1)
	{
		_GODOT_add_unscaled_billboard.bind("EditorSpatialGizmo", "add_unscaled_billboard");
		ptrcall!(void)(_GODOT_add_unscaled_billboard, _godot_object, material, default_scale);
	}
	package(godot) static GodotMethod!(void, PoolVector3Array, bool, bool) _GODOT_add_handles;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_handles") = _GODOT_add_handles;
	/**
	Add a list of handles (points) which can be used to deform the object being edited.
	There are virtual functions which will be called upon editing of these handles. Call this function during $(D redraw).
	*/
	void addHandles(in PoolVector3Array handles, in bool billboard = false, in bool secondary = false)
	{
		_GODOT_add_handles.bind("EditorSpatialGizmo", "add_handles");
		ptrcall!(void)(_GODOT_add_handles, _godot_object, handles, billboard, secondary);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_set_spatial_node;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_spatial_node") = _GODOT_set_spatial_node;
	/**
	
	*/
	void setSpatialNode(GodotObject node)
	{
		_GODOT_set_spatial_node.bind("EditorSpatialGizmo", "set_spatial_node");
		ptrcall!(void)(_GODOT_set_spatial_node, _godot_object, node);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	
	*/
	void clear()
	{
		_GODOT_clear.bind("EditorSpatialGizmo", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
}
