/**
Plugin for adding custom property editors on inspector.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorinspectorplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.control;
/**
Plugin for adding custom property editors on inspector.

This plugins allows adding custom property editors to $(D EditorInspector).
Plugins are registered via $(D EditorPlugin.addInspectorPlugin).
When an object is edited, the $(D canHandle) function is called and must return true if the object type is supported.
If supported, the function $(D parseBegin) will be called, allowing to place custom controls at the beginning of the class.
Subsequently, the $(D parseCategory) and $(D parseProperty) are called for every category and property. They offer the ability to add custom controls to the inspector too.
Finally $(D parseEnd) will be called.
On each of these calls, the "add" functions can be called.
*/
@GodotBaseClass struct EditorInspectorPlugin
{
	enum string _GODOT_internal_name = "EditorInspectorPlugin";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("can_handle") GodotMethod!(bool, GodotObject) canHandle;
		@GodotName("parse_begin") GodotMethod!(void, GodotObject) parseBegin;
		@GodotName("parse_category") GodotMethod!(void, GodotObject, String) parseCategory;
		@GodotName("parse_property") GodotMethod!(bool, GodotObject, long, String, long, String, long) parseProperty;
		@GodotName("parse_end") GodotMethod!(void) parseEnd;
		@GodotName("add_custom_control") GodotMethod!(void, Control) addCustomControl;
		@GodotName("add_property_editor") GodotMethod!(void, String, Control) addPropertyEditor;
		@GodotName("add_property_editor_for_multiple_properties") GodotMethod!(void, String, PoolStringArray, Control) addPropertyEditorForMultipleProperties;
	}
	bool opEquals(in EditorInspectorPlugin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorInspectorPlugin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorInspectorPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorInspectorPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorInspectorPlugin)(constructor());
	}
	@disable new(size_t s);
	/**
	Return true if this object can be handled by this plugin.
	*/
	bool canHandle(GodotObject object)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		String _GODOT_method_name = String("can_handle");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Called to allow adding controls at the beginning of the list.
	*/
	void parseBegin(GodotObject object)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		String _GODOT_method_name = String("parse_begin");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called to allow adding controls at the beginning of the category.
	*/
	void parseCategory(GodotObject object, in String category)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(category);
		String _GODOT_method_name = String("parse_category");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called to allow adding property specific editors to the inspector. Usually these inherit $(D EditorProperty)
	*/
	bool parseProperty(GodotObject object, in long type, in String path, in long hint, in String hint_text, in long usage)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(type);
		_GODOT_args.append(path);
		_GODOT_args.append(hint);
		_GODOT_args.append(hint_text);
		_GODOT_args.append(usage);
		String _GODOT_method_name = String("parse_property");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Called to allow adding controls at the end of the list.
	*/
	void parseEnd()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("parse_end");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Add a custom control, not necesarily a property editor.
	*/
	void addCustomControl(Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCustomControl, _godot_object, control);
	}
	/**
	Add a property editor, this must inherit $(D EditorProperty).
	*/
	void addPropertyEditor(in String property, Control editor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPropertyEditor, _godot_object, property, editor);
	}
	/**
	Add am editor that allows modifying multiple properties, this must inherit $(D EditorProperty).
	*/
	void addPropertyEditorForMultipleProperties(in String label, in PoolStringArray properties, Control editor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPropertyEditorForMultipleProperties, _godot_object, label, properties, editor);
	}
}
