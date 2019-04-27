/**
Used by the editor to define Spatial gizmo types.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorspatialgizmoplugin;
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
import godot.spatial;
import godot.editorspatialgizmo;
import godot.camera;
import godot.texture;
import godot.spatialmaterial;
import godot.reference;
/**
Used by the editor to define Spatial gizmo types.

EditorSpatialGizmoPlugin allows you to define a new type of Gizmo. There are two main ways to do so: extending $(D EditorSpatialGizmoPlugin) for the simpler gizmos, or creating a new $(D EditorSpatialGizmo) type. See the tutorial in the documentation for more info.
*/
@GodotBaseClass struct EditorSpatialGizmoPlugin
{
	enum string _GODOT_internal_name = "EditorSpatialGizmoPlugin";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("has_gizmo") GodotMethod!(bool, Spatial) hasGizmo;
		@GodotName("create_gizmo") GodotMethod!(EditorSpatialGizmo, Spatial) createGizmo;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("get_priority") GodotMethod!(String) getPriority;
		@GodotName("can_be_hidden") GodotMethod!(bool) canBeHidden;
		@GodotName("is_selectable_when_hidden") GodotMethod!(bool) isSelectableWhenHidden;
		@GodotName("redraw") GodotMethod!(void, EditorSpatialGizmo) redraw;
		@GodotName("get_handle_name") GodotMethod!(String, EditorSpatialGizmo, long) getHandleName;
		@GodotName("get_handle_value") GodotMethod!(Variant, EditorSpatialGizmo, long) getHandleValue;
		@GodotName("set_handle") GodotMethod!(void, EditorSpatialGizmo, long, Camera, Vector2) setHandle;
		@GodotName("commit_handle") GodotMethod!(void, EditorSpatialGizmo, long, Variant, bool) commitHandle;
		@GodotName("is_handle_highlighted") GodotMethod!(bool, EditorSpatialGizmo, long) isHandleHighlighted;
		@GodotName("create_material") GodotMethod!(void, String, Color, bool, bool, bool) createMaterial;
		@GodotName("create_icon_material") GodotMethod!(void, String, Texture, bool, Color) createIconMaterial;
		@GodotName("create_handle_material") GodotMethod!(void, String, bool) createHandleMaterial;
		@GodotName("add_material") GodotMethod!(void, String, SpatialMaterial) addMaterial;
		@GodotName("get_material") GodotMethod!(SpatialMaterial, String, EditorSpatialGizmo) getMaterial;
	}
	bool opEquals(in EditorSpatialGizmoPlugin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorSpatialGizmoPlugin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorSpatialGizmoPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSpatialGizmoPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSpatialGizmoPlugin)(constructor());
	}
	@disable new(size_t s);
	/**
	Override this method to define which Spatial nodes have a gizmo from this plugin. Whenever a $(D Spatial) node is added to a scene this method is called, if it returns `true` the node gets a generic $(D EditorSpatialGizmo) assigned and is added to this plugin's list of active gizmos.
	*/
	bool hasGizmo(Spatial spatial)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(spatial);
		String _GODOT_method_name = String("has_gizmo");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Override this method to return a custom $(D EditorSpatialGizmo) for the spatial nodes of your choice, return `null` for the rest of nodes. (See also $(D hasGizmo))
	*/
	Ref!EditorSpatialGizmo createGizmo(Spatial spatial)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(spatial);
		String _GODOT_method_name = String("create_gizmo");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!EditorSpatialGizmo);
	}
	/**
	Override this method to provide the name that will appear in the gizmo visibility menu.
	*/
	String getName()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	String getPriority()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_priority");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Override this method to define whether the gizmo can be hidden or not. Defaults to `true`.
	*/
	bool canBeHidden()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("can_be_hidden");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Override this method to define whether Spatial with this gizmo should be selecteble even when the gizmo is hidden.
	*/
	bool isSelectableWhenHidden()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("is_selectable_when_hidden");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Callback to redraw the provided gizmo. Called for this plugin's active gizmos.
	*/
	void redraw(EditorSpatialGizmo gizmo)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(gizmo);
		String _GODOT_method_name = String("redraw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Override this method to provide gizmo's handle names. Called for this plugin's active gizmos.
	*/
	String getHandleName(EditorSpatialGizmo gizmo, in long index)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(gizmo);
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Get actual value of a handle from gizmo. Called for this plugin's active gizmos.
	*/
	Variant getHandleValue(EditorSpatialGizmo gizmo, in long index)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(gizmo);
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_value");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Update the value of a handle after it has been updated. Called for this plugin's active gizmos.
	*/
	void setHandle(EditorSpatialGizmo gizmo, in long index, Camera camera, in Vector2 point)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(gizmo);
		_GODOT_args.append(index);
		_GODOT_args.append(camera);
		_GODOT_args.append(point);
		String _GODOT_method_name = String("set_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Override this method to commit gizmo handles. Called for this plugin's active gizmos.
	*/
	void commitHandle(VariantArg2)(EditorSpatialGizmo gizmo, in long index, in VariantArg2 restore, in bool cancel)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(gizmo);
		_GODOT_args.append(index);
		_GODOT_args.append(restore);
		_GODOT_args.append(cancel);
		String _GODOT_method_name = String("commit_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Get whether a handle is highlighted or not. Called for this plugin's active gizmos.
	*/
	bool isHandleHighlighted(EditorSpatialGizmo gizmo, in long index)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(gizmo);
		_GODOT_args.append(index);
		String _GODOT_method_name = String("is_handle_highlighted");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Creates an unshaded material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with $(D getMaterial) and used in $(D EditorSpatialGizmo.addMesh) and $(D EditorSpatialGizmo.addLines). Should not be overridden.
	*/
	void createMaterial(in String name, in Color color, in bool billboard = false, in bool on_top = false, in bool use_vertex_color = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createMaterial, _godot_object, name, color, billboard, on_top, use_vertex_color);
	}
	/**
	Creates an icon material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with $(D getMaterial) and used in $(D EditorSpatialGizmo.addUnscaledBillboard). Should not be overridden.
	*/
	void createIconMaterial(in String name, Texture texture, in bool on_top = false, in Color color = Color(1,1,1,1))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createIconMaterial, _godot_object, name, texture, on_top, color);
	}
	/**
	Creates a handle material with its variants (selected and/or editable) and adds them to the internal material list. They can then be accessed with $(D getMaterial) and used in $(D EditorSpatialGizmo.addHandles). Should not be overridden.
	*/
	void createHandleMaterial(in String name, in bool billboard = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createHandleMaterial, _godot_object, name, billboard);
	}
	/**
	Adds a new material to the internal material list for the plugin. It can then be accessed with $(D getMaterial). Should not be overridden.
	*/
	void addMaterial(in String name, SpatialMaterial material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addMaterial, _godot_object, name, material);
	}
	/**
	Get material from the internal list of materials. If an $(D EditorSpatialGizmo) is provided it will try to get the corresponding variant (selected and/or editable).
	*/
	Ref!SpatialMaterial getMaterial(in String name, EditorSpatialGizmo gizmo)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial)(_classBinding.getMaterial, _godot_object, name, gizmo);
	}
}
