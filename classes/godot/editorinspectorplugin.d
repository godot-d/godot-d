/**


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
/**

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
		@GodotName("add_custom_control") GodotMethod!(void, GodotObject) addCustomControl;
		@GodotName("add_property_editor") GodotMethod!(void, String, GodotObject) addPropertyEditor;
		@GodotName("add_property_editor_for_multiple_properties") GodotMethod!(void, String, PoolStringArray, GodotObject) addPropertyEditorForMultipleProperties;
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
	
	*/
	bool canHandle(GodotObject object)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		String _GODOT_method_name = String("can_handle");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void parseBegin(GodotObject object)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		String _GODOT_method_name = String("parse_begin");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void parseCategory(StringArg1)(GodotObject object, in StringArg1 category)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(category);
		String _GODOT_method_name = String("parse_category");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool parseProperty(StringArg2, StringArg4)(GodotObject object, in long type, in StringArg2 path, in long hint, in StringArg4 hint_text, in long usage)
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
	
	*/
	void parseEnd()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("parse_end");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addCustomControl(GodotObject control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCustomControl, _godot_object, control);
	}
	/**
	
	*/
	void addPropertyEditor(StringArg0)(in StringArg0 property, GodotObject editor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPropertyEditor, _godot_object, property, editor);
	}
	/**
	
	*/
	void addPropertyEditorForMultipleProperties(StringArg0)(in StringArg0 label, in PoolStringArray properties, GodotObject editor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPropertyEditorForMultipleProperties, _godot_object, label, properties, editor);
	}
}
