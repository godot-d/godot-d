/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorspatialgizmoplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.resource;
import godot.spatialmaterial;
import godot.editorspatialgizmo;
import godot.spatial;
import godot.texture;
import godot.camera;
/**

*/
@GodotBaseClass struct EditorSpatialGizmoPlugin
{
	package(godot) enum string _GODOT_internal_name = "EditorSpatialGizmoPlugin";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_material") GodotMethod!(void, String, SpatialMaterial) addMaterial;
		@GodotName("can_be_hidden") GodotMethod!(bool) canBeHidden;
		@GodotName("commit_handle") GodotMethod!(void, EditorSpatialGizmo, long, Variant, bool) commitHandle;
		@GodotName("create_gizmo") GodotMethod!(EditorSpatialGizmo, Spatial) createGizmo;
		@GodotName("create_handle_material") GodotMethod!(void, String, bool, Texture) createHandleMaterial;
		@GodotName("create_icon_material") GodotMethod!(void, String, Texture, bool, Color) createIconMaterial;
		@GodotName("create_material") GodotMethod!(void, String, Color, bool, bool, bool) createMaterial;
		@GodotName("get_handle_name") GodotMethod!(String, EditorSpatialGizmo, long) getHandleName;
		@GodotName("get_handle_value") GodotMethod!(Variant, EditorSpatialGizmo, long) getHandleValue;
		@GodotName("get_material") GodotMethod!(SpatialMaterial, String, EditorSpatialGizmo) getMaterial;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("get_priority") GodotMethod!(long) getPriority;
		@GodotName("has_gizmo") GodotMethod!(bool, Spatial) hasGizmo;
		@GodotName("is_handle_highlighted") GodotMethod!(bool, EditorSpatialGizmo, long) isHandleHighlighted;
		@GodotName("is_selectable_when_hidden") GodotMethod!(bool) isSelectableWhenHidden;
		@GodotName("redraw") GodotMethod!(void, EditorSpatialGizmo) redraw;
		@GodotName("set_handle") GodotMethod!(void, EditorSpatialGizmo, long, Camera, Vector2) setHandle;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorSpatialGizmoPlugin other) const
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
	/// Construct a new instance of EditorSpatialGizmoPlugin.
	/// Note: use `memnew!EditorSpatialGizmoPlugin` instead.
	static EditorSpatialGizmoPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSpatialGizmoPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSpatialGizmoPlugin)(constructor());
	}
	/**
	
	*/
	void addMaterial(in String name, SpatialMaterial material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addMaterial, _godot_object, name, material);
	}
	/**
	
	*/
	bool canBeHidden()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("can_be_hidden");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void commitHandle(VariantArg2)(EditorSpatialGizmo gizmo, in long index, in VariantArg2 restore, in bool cancel)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(gizmo);
		_GODOT_args.append(index);
		_GODOT_args.append(restore);
		_GODOT_args.append(cancel);
		String _GODOT_method_name = String("commit_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Ref!EditorSpatialGizmo createGizmo(Spatial spatial)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(spatial);
		String _GODOT_method_name = String("create_gizmo");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!EditorSpatialGizmo);
	}
	/**
	
	*/
	void createHandleMaterial(in String name, in bool billboard = false, Texture texture = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createHandleMaterial, _godot_object, name, billboard, texture);
	}
	/**
	
	*/
	void createIconMaterial(in String name, Texture texture, in bool on_top = false, in Color color = Color(1,1,1,1))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createIconMaterial, _godot_object, name, texture, on_top, color);
	}
	/**
	
	*/
	void createMaterial(in String name, in Color color, in bool billboard = false, in bool on_top = false, in bool use_vertex_color = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createMaterial, _godot_object, name, color, billboard, on_top, use_vertex_color);
	}
	/**
	
	*/
	String getHandleName(EditorSpatialGizmo gizmo, in long index)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(gizmo);
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	Variant getHandleValue(EditorSpatialGizmo gizmo, in long index)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(gizmo);
		_GODOT_args.append(index);
		String _GODOT_method_name = String("get_handle_value");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Ref!SpatialMaterial getMaterial(in String name, EditorSpatialGizmo gizmo = EditorSpatialGizmo.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial)(GDNativeClassBinding.getMaterial, _godot_object, name, gizmo);
	}
	/**
	
	*/
	String getName()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	long getPriority()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_priority");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	/**
	
	*/
	bool hasGizmo(Spatial spatial)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(spatial);
		String _GODOT_method_name = String("has_gizmo");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool isHandleHighlighted(EditorSpatialGizmo gizmo, in long index)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(gizmo);
		_GODOT_args.append(index);
		String _GODOT_method_name = String("is_handle_highlighted");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool isSelectableWhenHidden()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("is_selectable_when_hidden");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void redraw(EditorSpatialGizmo gizmo)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(gizmo);
		String _GODOT_method_name = String("redraw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setHandle(EditorSpatialGizmo gizmo, in long index, Camera camera, in Vector2 point)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(gizmo);
		_GODOT_args.append(index);
		_GODOT_args.append(camera);
		_GODOT_args.append(point);
		String _GODOT_method_name = String("set_handle");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
}
