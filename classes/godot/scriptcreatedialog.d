/**
The Editor's popup dialog for creating new $(D Script) files.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.scriptcreatedialog;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.confirmationdialog;
import godot.acceptdialog;
import godot.windowdialog;
import godot.popup;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
The Editor's popup dialog for creating new $(D Script) files.

The ScriptCreateDialog creates script files according to a given template for a given scripting language. The standard use is to configure its fields prior to calling a $(D popup)() method.


func _ready():
	dialog.config("Node", "res://new_node.gd") # for in-engine types
	dialog.config("\"res://base_node.gd\"", "res://derived_node.gd") # for script types
	dialog.popup_centered()


*/
@GodotBaseClass struct ScriptCreateDialog
{
	enum string _GODOT_internal_name = "ScriptCreateDialog";
public:
@nogc nothrow:
	union { godot_object _godot_object; ConfirmationDialog _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_class_name_changed") GodotMethod!(void, String) _classNameChanged;
		@GodotName("_parent_name_changed") GodotMethod!(void, String) _parentNameChanged;
		@GodotName("_lang_changed") GodotMethod!(void, long) _langChanged;
		@GodotName("_built_in_pressed") GodotMethod!(void) _builtInPressed;
		@GodotName("_browse_path") GodotMethod!(void, bool, bool) _browsePath;
		@GodotName("_file_selected") GodotMethod!(void, String) _fileSelected;
		@GodotName("_path_changed") GodotMethod!(void, String) _pathChanged;
		@GodotName("_path_entered") GodotMethod!(void, String) _pathEntered;
		@GodotName("_template_changed") GodotMethod!(void, long) _templateChanged;
		@GodotName("config") GodotMethod!(void, String, String, bool) config;
	}
	bool opEquals(in ScriptCreateDialog other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ScriptCreateDialog opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ScriptCreateDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ScriptCreateDialog");
		if(constructor is null) return typeof(this).init;
		return cast(ScriptCreateDialog)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _classNameChanged(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_class_name_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _parentNameChanged(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_parent_name_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _langChanged(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_lang_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _builtInPressed()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_built_in_pressed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _browsePath(in bool arg0, in bool arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_browse_path");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _fileSelected(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_file_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _pathChanged(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_path_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _pathEntered(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_path_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _templateChanged(in long arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_template_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Prefills required fields to configure the ScriptCreateDialog for use.
	*/
	void config(in String inherits, in String path, in bool built_in_enabled = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.config, _godot_object, inherits, path, built_in_enabled);
	}
}
