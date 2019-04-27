/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorinspector;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.scrollcontainer;
import godot.node;
import godot.resource;
import godot.container;
import godot.control;
import godot.canvasitem;
/**

*/
@GodotBaseClass struct EditorInspector
{
	enum string _GODOT_internal_name = "EditorInspector";
public:
@nogc nothrow:
	union { godot_object _godot_object; ScrollContainer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_property_changed") GodotMethod!(void, String, Variant, String, bool) _propertyChanged;
		@GodotName("_multiple_properties_changed") GodotMethod!(void, PoolStringArray, Array) _multiplePropertiesChanged;
		@GodotName("_property_changed_update_all") GodotMethod!(void, String, Variant, String, bool) _propertyChangedUpdateAll;
		@GodotName("_edit_request_change") GodotMethod!(void, GodotObject, String) _editRequestChange;
		@GodotName("_node_removed") GodotMethod!(void, Node) _nodeRemoved;
		@GodotName("_filter_changed") GodotMethod!(void, String) _filterChanged;
		@GodotName("_property_keyed") GodotMethod!(void, String, bool) _propertyKeyed;
		@GodotName("_property_keyed_with_value") GodotMethod!(void, String, Variant, bool) _propertyKeyedWithValue;
		@GodotName("_property_checked") GodotMethod!(void, String, bool) _propertyChecked;
		@GodotName("_property_selected") GodotMethod!(void, String, long) _propertySelected;
		@GodotName("_resource_selected") GodotMethod!(void, String, Resource) _resourceSelected;
		@GodotName("_object_id_selected") GodotMethod!(void, String, long) _objectIdSelected;
		@GodotName("_vscroll_changed") GodotMethod!(void, double) _vscrollChanged;
		@GodotName("refresh") GodotMethod!(void) refresh;
	}
	bool opEquals(in EditorInspector other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorInspector opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorInspector _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorInspector");
		if(constructor is null) return typeof(this).init;
		return cast(EditorInspector)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _propertyChanged(VariantArg1)(in String arg0, in VariantArg1 arg1, in String arg2 = gs!"", in bool arg3 = false)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_property_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _multiplePropertiesChanged(in PoolStringArray arg0, in Array arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_multiple_properties_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _propertyChangedUpdateAll(VariantArg1)(in String arg0, in VariantArg1 arg1, in String arg2, in bool arg3)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		String _GODOT_method_name = String("_property_changed_update_all");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _editRequestChange(GodotObject arg0, in String arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_edit_request_change");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _nodeRemoved(Node arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_node_removed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _filterChanged(in String arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_filter_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _propertyKeyed(in String arg0, in bool arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_property_keyed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _propertyKeyedWithValue(VariantArg1)(in String arg0, in VariantArg1 arg1, in bool arg2)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		String _GODOT_method_name = String("_property_keyed_with_value");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _propertyChecked(in String arg0, in bool arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_property_checked");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _propertySelected(in String arg0, in long arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_property_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _resourceSelected(in String arg0, Resource arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_resource_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _objectIdSelected(in String arg0, in long arg1)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		String _GODOT_method_name = String("_object_id_selected");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _vscrollChanged(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_vscroll_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void refresh()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.refresh, _godot_object);
	}
}
