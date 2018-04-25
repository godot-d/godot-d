/**
Helper to manage UndoRedo in the editor or custom tools.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.undoredo;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
/**
Helper to manage UndoRedo in the editor or custom tools.

It works by storing calls to functions in both 'do' an 'undo' lists.
Common behavior is to create an action, then add do/undo calls to functions or property changes, then committing the action.
*/
@GodotBaseClass struct UndoRedo
{
	static immutable string _GODOT_internal_name = "UndoRedo";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in UndoRedo other) const { return _godot_object.ptr is other._godot_object.ptr; }
	UndoRedo opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static UndoRedo _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("UndoRedo");
		if(constructor is null) return typeof(this).init;
		return cast(UndoRedo)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum MergeMode : int
	{
		/**
		
		*/
		mergeDisable = 0,
		/**
		
		*/
		mergeEnds = 1,
		/**
		
		*/
		mergeAll = 2,
	}
	/// 
	enum Constants : int
	{
		mergeDisable = 0,
		mergeEnds = 1,
		mergeAll = 2,
	}
	package(godot) static GodotMethod!(void, String, long) _GODOT_create_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "create_action") = _GODOT_create_action;
	/**
	Create a new action. After this is called, do all your calls to $(D addDoMethod), $(D addUndoMethod), $(D addDoProperty) and $(D addUndoProperty).
	*/
	void createAction(StringArg0)(in StringArg0 name, in long merge_mode = 0)
	{
		_GODOT_create_action.bind("UndoRedo", "create_action");
		ptrcall!(void)(_GODOT_create_action, _godot_object, name, merge_mode);
	}
	package(godot) static GodotMethod!(void) _GODOT_commit_action;
	package(godot) alias _GODOT_methodBindInfo(string name : "commit_action") = _GODOT_commit_action;
	/**
	Commit the action. All 'do' methods/properties are called/set when this function is called.
	*/
	void commitAction()
	{
		_GODOT_commit_action.bind("UndoRedo", "commit_action");
		ptrcall!(void)(_GODOT_commit_action, _godot_object);
	}
	package(godot) static GodotMethod!(Variant, GodotObject, String, GodotVarArgs) _GODOT_add_do_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_do_method") = _GODOT_add_do_method;
	/**
	
	*/
	Variant addDoMethod(StringArg1, VarArgs...)(GodotObject object, in StringArg1 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("add_do_method");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, GodotObject, String, GodotVarArgs) _GODOT_add_undo_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_undo_method") = _GODOT_add_undo_method;
	/**
	
	*/
	Variant addUndoMethod(StringArg1, VarArgs...)(GodotObject object, in StringArg1 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(object);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("add_undo_method");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, GodotObject, String, Variant) _GODOT_add_do_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_do_property") = _GODOT_add_do_property;
	/**
	Set a property with a custom value.
	*/
	void addDoProperty(StringArg1, VariantArg2)(GodotObject object, in StringArg1 property, in VariantArg2 value)
	{
		_GODOT_add_do_property.bind("UndoRedo", "add_do_property");
		ptrcall!(void)(_GODOT_add_do_property, _godot_object, object, property, value);
	}
	package(godot) static GodotMethod!(void, GodotObject, String, Variant) _GODOT_add_undo_property;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_undo_property") = _GODOT_add_undo_property;
	/**
	Undo setting of a property with a custom value.
	*/
	void addUndoProperty(StringArg1, VariantArg2)(GodotObject object, in StringArg1 property, in VariantArg2 value)
	{
		_GODOT_add_undo_property.bind("UndoRedo", "add_undo_property");
		ptrcall!(void)(_GODOT_add_undo_property, _godot_object, object, property, value);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_do_reference;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_do_reference") = _GODOT_add_do_reference;
	/**
	Add a 'do' reference that will be erased if the 'do' history is lost. This is useful mostly for new nodes created for the 'do' call. Do not use for resources.
	*/
	void addDoReference(GodotObject object)
	{
		_GODOT_add_do_reference.bind("UndoRedo", "add_do_reference");
		ptrcall!(void)(_GODOT_add_do_reference, _godot_object, object);
	}
	package(godot) static GodotMethod!(void, GodotObject) _GODOT_add_undo_reference;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_undo_reference") = _GODOT_add_undo_reference;
	/**
	Add an 'undo' reference that will be erased if the 'undo' history is lost. This is useful mostly for nodes removed with the 'do' call (not the 'undo' call!).
	*/
	void addUndoReference(GodotObject object)
	{
		_GODOT_add_undo_reference.bind("UndoRedo", "add_undo_reference");
		ptrcall!(void)(_GODOT_add_undo_reference, _godot_object, object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear_history;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear_history") = _GODOT_clear_history;
	/**
	Clear the undo/redo history and associated references.
	*/
	void clearHistory()
	{
		_GODOT_clear_history.bind("UndoRedo", "clear_history");
		ptrcall!(void)(_GODOT_clear_history, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_current_action_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_action_name") = _GODOT_get_current_action_name;
	/**
	Get the name of the current action.
	*/
	String getCurrentActionName() const
	{
		_GODOT_get_current_action_name.bind("UndoRedo", "get_current_action_name");
		return ptrcall!(String)(_GODOT_get_current_action_name, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_version;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_version") = _GODOT_get_version;
	/**
	Get the version, each time a new action is committed, the version number of the UndoRedo is increased automatically.
	This is useful mostly to check if something changed from a saved version.
	*/
	long getVersion() const
	{
		_GODOT_get_version.bind("UndoRedo", "get_version");
		return ptrcall!(long)(_GODOT_get_version, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_redo;
	package(godot) alias _GODOT_methodBindInfo(string name : "redo") = _GODOT_redo;
	/**
	
	*/
	void redo()
	{
		_GODOT_redo.bind("UndoRedo", "redo");
		ptrcall!(void)(_GODOT_redo, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_undo;
	package(godot) alias _GODOT_methodBindInfo(string name : "undo") = _GODOT_undo;
	/**
	
	*/
	void undo()
	{
		_GODOT_undo.bind("UndoRedo", "undo");
		ptrcall!(void)(_GODOT_undo, _godot_object);
	}
}
