/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorresourcepicker;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.hboxcontainer;
import godot.inputevent;
import godot.texture;
import godot.control;
import godot.resource;
/**

*/
@GodotBaseClass struct EditorResourcePicker
{
	package(godot) enum string _GODOT_internal_name = "EditorResourcePicker";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ HBoxContainer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_button_draw") GodotMethod!(void) _buttonDraw;
		@GodotName("_button_input") GodotMethod!(void, InputEvent) _buttonInput;
		@GodotName("_edit_menu_cbk") GodotMethod!(void, long) _editMenuCbk;
		@GodotName("_file_quick_selected") GodotMethod!(void) _fileQuickSelected;
		@GodotName("_file_selected") GodotMethod!(void, String) _fileSelected;
		@GodotName("_resource_selected") GodotMethod!(void) _resourceSelected;
		@GodotName("_update_menu") GodotMethod!(void) _updateMenu;
		@GodotName("_update_resource_preview") GodotMethod!(void, String, Texture, Texture, long) _updateResourcePreview;
		@GodotName("can_drop_data_fw") GodotMethod!(bool, Vector2, Variant, Control) canDropDataFw;
		@GodotName("drop_data_fw") GodotMethod!(void, Vector2, Variant, Control) dropDataFw;
		@GodotName("get_allowed_types") GodotMethod!(PoolStringArray) getAllowedTypes;
		@GodotName("get_base_type") GodotMethod!(String) getBaseType;
		@GodotName("get_drag_data_fw") GodotMethod!(Variant, Vector2, Control) getDragDataFw;
		@GodotName("get_edited_resource") GodotMethod!(Resource) getEditedResource;
		@GodotName("handle_menu_selected") GodotMethod!(bool, long) handleMenuSelected;
		@GodotName("is_editable") GodotMethod!(bool) isEditable;
		@GodotName("is_toggle_mode") GodotMethod!(bool) isToggleMode;
		@GodotName("set_base_type") GodotMethod!(void, String) setBaseType;
		@GodotName("set_create_options") GodotMethod!(void, GodotObject) setCreateOptions;
		@GodotName("set_editable") GodotMethod!(void, bool) setEditable;
		@GodotName("set_edited_resource") GodotMethod!(void, Resource) setEditedResource;
		@GodotName("set_toggle_mode") GodotMethod!(void, bool) setToggleMode;
		@GodotName("set_toggle_pressed") GodotMethod!(void, bool) setTogglePressed;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorResourcePicker other) const
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
	/// Construct a new instance of EditorResourcePicker.
	/// Note: use `memnew!EditorResourcePicker` instead.
	static EditorResourcePicker _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorResourcePicker");
		if(constructor is null) return typeof(this).init;
		return cast(EditorResourcePicker)(constructor());
	}
	/**
	
	*/
	void _buttonDraw()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_button_draw");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _buttonInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_button_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editMenuCbk(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_edit_menu_cbk");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileQuickSelected()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_file_quick_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileSelected(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _resourceSelected()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_resource_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateMenu()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update_menu");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _updateResourcePreview(in String arg0, Texture arg1, Texture arg2, in long arg3)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_update_resource_preview");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool canDropDataFw(VariantArg1)(in Vector2 position, in VariantArg1 data, Control from) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canDropDataFw, _godot_object, position, data, from);
	}
	/**
	
	*/
	void dropDataFw(VariantArg1)(in Vector2 position, in VariantArg1 data, Control from)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.dropDataFw, _godot_object, position, data, from);
	}
	/**
	
	*/
	PoolStringArray getAllowedTypes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getAllowedTypes, _godot_object);
	}
	/**
	
	*/
	String getBaseType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getBaseType, _godot_object);
	}
	/**
	
	*/
	Variant getDragDataFw(in Vector2 position, Control from)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getDragDataFw, _godot_object, position, from);
	}
	/**
	
	*/
	Ref!Resource getEditedResource()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(GDNativeClassBinding.getEditedResource, _godot_object);
	}
	/**
	
	*/
	bool handleMenuSelected(in long id)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(id);
		String _GODOT_method_name = String("handle_menu_selected");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool isEditable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEditable, _godot_object);
	}
	/**
	
	*/
	bool isToggleMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isToggleMode, _godot_object);
	}
	/**
	
	*/
	void setBaseType(in String base_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBaseType, _godot_object, base_type);
	}
	/**
	
	*/
	void setCreateOptions(GodotObject menu_node)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(menu_node);
		String _GODOT_method_name = String("set_create_options");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setEditable(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEditable, _godot_object, enable);
	}
	/**
	
	*/
	void setEditedResource(Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEditedResource, _godot_object, resource);
	}
	/**
	
	*/
	void setToggleMode(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setToggleMode, _godot_object, enable);
	}
	/**
	
	*/
	void setTogglePressed(in bool pressed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTogglePressed, _godot_object, pressed);
	}
	/**
	
	*/
	@property String baseType()
	{
		return getBaseType();
	}
	/// ditto
	@property void baseType(String v)
	{
		setBaseType(v);
	}
	/**
	
	*/
	@property bool editable()
	{
		return isEditable();
	}
	/// ditto
	@property void editable(bool v)
	{
		setEditable(v);
	}
	/**
	
	*/
	@property Resource editedResource()
	{
		return getEditedResource();
	}
	/// ditto
	@property void editedResource(Resource v)
	{
		setEditedResource(v);
	}
	/**
	
	*/
	@property bool toggleMode()
	{
		return isToggleMode();
	}
	/// ditto
	@property void toggleMode(bool v)
	{
		setToggleMode(v);
	}
}
