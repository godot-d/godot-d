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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.spatialgizmo;
import godot.trianglemesh;
import godot.material;
import godot.arraymesh;
import godot.skinreference;
import godot.editorspatialgizmoplugin;
import godot.spatial;
import godot.camera;
import godot.node;
/**
Custom gizmo for editing Spatial objects.

Custom gizmo that is used for providing custom visualization and editing (handles) for 3D Spatial objects. See $(D EditorSpatialGizmoPlugin) for more information.
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
		@GodotName("add_mesh") GodotMethod!(void, ArrayMesh, bool, SkinReference, Material) addMesh;
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
	Adds the specified `segments` to the gizmo's collision shape for picking. Call this function during $(D redraw).
	*/
	void addCollisionSegments(in PoolVector3Array segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCollisionSegments, _godot_object, segments);
	}
	/**
	Adds collision triangles to the gizmo for picking. A $(D TriangleMesh) can be generated from a regular $(D Mesh) too. Call this function during $(D redraw).
	*/
	void addCollisionTriangles(TriangleMesh triangles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addCollisionTriangles, _godot_object, triangles);
	}
	/**
	Adds a list of handles (points) which can be used to deform the object being edited.
	There are virtual functions which will be called upon editing of these handles. Call this function during $(D redraw).
	*/
	void addHandles(in PoolVector3Array handles, Material material, in bool billboard = false, in bool secondary = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addHandles, _godot_object, handles, material, billboard, secondary);
	}
	/**
	Adds lines to the gizmo (as sets of 2 points), with a given material. The lines are used for visualizing the gizmo. Call this function during $(D redraw).
	*/
	void addLines(in PoolVector3Array lines, Material material, in bool billboard = false, in Color modulate = Color(1,1,1,1))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addLines, _godot_object, lines, material, billboard, modulate);
	}
	/**
	Adds a mesh to the gizmo with the specified `billboard` state, `skeleton` and `material`. If `billboard` is `true`, the mesh will rotate to always face the camera. Call this function during $(D redraw).
	*/
	void addMesh(ArrayMesh mesh, in bool billboard = false, SkinReference skeleton = SkinReference.init, Material material = Material.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addMesh, _godot_object, mesh, billboard, skeleton, material);
	}
	/**
	Adds an unscaled billboard for visualization. Call this function during $(D redraw).
	*/
	void addUnscaledBillboard(Material material, in double default_scale = 1, in Color modulate = Color(1,1,1,1))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addUnscaledBillboard, _godot_object, material, default_scale, modulate);
	}
	/**
	Removes everything in the gizmo including meshes, collisions and handles.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	Commit a handle being edited (handles must have been previously added by $(D addHandles)).
	If the `cancel` parameter is `true`, an option to restore the edited value to the original is provided.
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
	Gets the name of an edited handle (handles must have been previously added by $(D addHandles)).
	Handles can be named for reference to the user when editing.
	*/
	String getHandleName(in long index)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Gets actual value of a handle. This value can be anything and used for eventually undoing the motion when calling $(D commitHandle).
	*/
	Variant getHandleValue(in long index)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_value");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns the $(D EditorSpatialGizmoPlugin) that owns this gizmo. It's useful to retrieve materials using $(D EditorSpatialGizmoPlugin.getMaterial).
	*/
	Ref!EditorSpatialGizmoPlugin getPlugin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(EditorSpatialGizmoPlugin)(GDNativeClassBinding.getPlugin, _godot_object);
	}
	/**
	Returns the Spatial node associated with this gizmo.
	*/
	Spatial getSpatialNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Spatial)(GDNativeClassBinding.getSpatialNode, _godot_object);
	}
	/**
	Returns `true` if the handle at index `index` is highlighted by being hovered with the mouse.
	*/
	bool isHandleHighlighted(in long index)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(index);
		String _GODOT_method_name = String("is_handle_highlighted");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	This function is called when the $(D Spatial) this gizmo refers to changes (the $(D Spatial.updateGizmo) is called).
	*/
	void redraw()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("redraw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	This function is used when the user drags a gizmo handle (previously added with $(D addHandles)) in screen coordinates.
	The $(D Camera) is also provided so screen coordinates can be converted to raycasts.
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
	Sets the gizmo's hidden state. If `true`, the gizmo will be hidden. If `false`, it will be shown.
	*/
	void setHidden(in bool hidden)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHidden, _godot_object, hidden);
	}
	/**
	Sets the reference $(D Spatial) node for the gizmo. `node` must inherit from $(D Spatial).
	*/
	void setSpatialNode(Node node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpatialNode, _godot_object, node);
	}
}
