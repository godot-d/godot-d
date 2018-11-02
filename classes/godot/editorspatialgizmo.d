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
import godot.reference;
/**
Custom gizmo for editing Spatial objects.

Custom gizmo that is used for providing custom visualization and editing (handles) for 3D Spatial objects. These are created by $(D EditorPlugin.createSpatialGizmo).
*/
@GodotBaseClass struct EditorSpatialGizmo
{
	enum string _GODOT_internal_name = "EditorSpatialGizmo";
public:
@nogc nothrow:
	union { godot_object _godot_object; SpatialGizmo _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("redraw") GodotMethod!(void) redraw;
		@GodotName("get_handle_name") GodotMethod!(String, long) getHandleName;
		@GodotName("get_handle_value") GodotMethod!(Variant, long) getHandleValue;
		@GodotName("set_handle") GodotMethod!(void, long, Camera, Vector2) setHandle;
		@GodotName("commit_handle") GodotMethod!(void, long, Variant, bool) commitHandle;
		@GodotName("add_lines") GodotMethod!(void, PoolVector3Array, Material, bool) addLines;
		@GodotName("add_mesh") GodotMethod!(void, ArrayMesh, bool, RID) addMesh;
		@GodotName("add_collision_segments") GodotMethod!(void, PoolVector3Array) addCollisionSegments;
		@GodotName("add_collision_triangles") GodotMethod!(void, TriangleMesh) addCollisionTriangles;
		@GodotName("add_unscaled_billboard") GodotMethod!(void, Material, double) addUnscaledBillboard;
		@GodotName("add_handles") GodotMethod!(void, PoolVector3Array, Material, bool, bool) addHandles;
		@GodotName("set_spatial_node") GodotMethod!(void, GodotObject) setSpatialNode;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("set_hidden") GodotMethod!(void, bool) setHidden;
	}
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
	/**
	This function is called when the Spatial this gizmo refers to changes (the $(D Spatial.updateGizmo) is called).
	*/
	void redraw()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("redraw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
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
	/**
	Add lines to the gizmo (as sets of 2 points), with a given material. The lines are used for visualizing the gizmo. Call this function during $(D redraw).
	*/
	void addLines(in PoolVector3Array lines, Material material, in bool billboard = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addLines, _godot_object, lines, material, billboard);
	}
	/**
	
	*/
	void addMesh(ArrayMesh mesh, in bool billboard = false, in RID skeleton = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addMesh, _godot_object, mesh, billboard, skeleton);
	}
	/**
	
	*/
	void addCollisionSegments(in PoolVector3Array segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCollisionSegments, _godot_object, segments);
	}
	/**
	Add collision triangles to the gizmo for picking. A $(D TriangleMesh) can be generated from a regular $(D Mesh) too. Call this function during $(D redraw).
	*/
	void addCollisionTriangles(TriangleMesh triangles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCollisionTriangles, _godot_object, triangles);
	}
	/**
	Add an unscaled billboard for visualization. Call this function during $(D redraw).
	*/
	void addUnscaledBillboard(Material material, in double default_scale = 1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addUnscaledBillboard, _godot_object, material, default_scale);
	}
	/**
	Add a list of handles (points) which can be used to deform the object being edited.
	There are virtual functions which will be called upon editing of these handles. Call this function during $(D redraw).
	*/
	void addHandles(in PoolVector3Array handles, Material material, in bool billboard = false, in bool secondary = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addHandles, _godot_object, handles, material, billboard, secondary);
	}
	/**
	
	*/
	void setSpatialNode(GodotObject node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpatialNode, _godot_object, node);
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	
	*/
	void setHidden(in bool hidden)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHidden, _godot_object, hidden);
	}
}
