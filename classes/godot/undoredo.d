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

It works by registering methods and property changes inside 'actions'.
Common behavior is to create an action, then add do/undo calls to functions or property changes, then committing the action.
Here's an example on how to add an action to Godot editor's own 'undoredo':


var undoredo = get_undo_redo() # method of EditorPlugin

func do_something():
    pass # put your code here

func undo_something():
    pass # put here the code that reverts what's done by "do_something()"

func _on_MyButton_pressed():
    var node = get_node("MyNode2D")
    undoredo.create_action("Move the node")
    undoredo.add_do_method(self, "do_something")
    undoredo.add_undo_method(self, "undo_something")
    undoredo.add_do_property(node, "position", Vector2(100,100))
    undoredo.add_undo_property(node, "position", node.position)
    undoredo.commit_action()


$(D createAction), $(D addDoMethod), $(D addUndoMethod), $(D addDoProperty), $(D addUndoProperty), and $(D commitAction) should be called one after the other, like in the example. Not doing so could lead to crashes.
If you don't need to register a method you can leave $(D addDoMethod) and $(D addUndoMethod) out, and so it goes for properties. You can register more than one method/property.
*/
@GodotBaseClass struct UndoRedo
{
	enum string _GODOT_internal_name = "UndoRedo";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("create_action") GodotMethod!(void, String, long) createAction;
		@GodotName("commit_action") GodotMethod!(void) commitAction;
		@GodotName("add_do_method") GodotMethod!(Variant, GodotObject, String, GodotVarArgs) addDoMethod;
		@GodotName("add_undo_method") GodotMethod!(Variant, GodotObject, String, GodotVarArgs) addUndoMethod;
		@GodotName("add_do_property") GodotMethod!(void, GodotObject, String, Variant) addDoProperty;
		@GodotName("add_undo_property") GodotMethod!(void, GodotObject, String, Variant) addUndoProperty;
		@GodotName("add_do_reference") GodotMethod!(void, GodotObject) addDoReference;
		@GodotName("add_undo_reference") GodotMethod!(void, GodotObject) addUndoReference;
		@GodotName("clear_history") GodotMethod!(void) clearHistory;
		@GodotName("get_current_action_name") GodotMethod!(String) getCurrentActionName;
		@GodotName("get_version") GodotMethod!(long) getVersion;
		@GodotName("redo") GodotMethod!(bool) redo;
		@GodotName("undo") GodotMethod!(bool) undo;
	}
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
	/**
	Create a new action. After this is called, do all your calls to $(D addDoMethod), $(D addUndoMethod), $(D addDoProperty), and $(D addUndoProperty), then commit the action with $(D commitAction).
	*/
	void createAction(StringArg0)(in StringArg0 name, in long merge_mode = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.createAction, _godot_object, name, merge_mode);
	}
	/**
	Commit the action. All 'do' methods/properties are called/set when this function is called.
	*/
	void commitAction()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.commitAction, _godot_object);
	}
	/**
	Register a method that will be called when the action is committed.
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
	/**
	Register a method that will be called when the action is undone.
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
	/**
	Register a property value change for 'do'.
	*/
	void addDoProperty(StringArg1, VariantArg2)(GodotObject object, in StringArg1 property, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addDoProperty, _godot_object, object, property, value);
	}
	/**
	Register a property value change for 'undo'.
	*/
	void addUndoProperty(StringArg1, VariantArg2)(GodotObject object, in StringArg1 property, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addUndoProperty, _godot_object, object, property, value);
	}
	/**
	Register a reference for 'do' that will be erased if the 'do' history is lost. This is useful mostly for new nodes created for the 'do' call. Do not use for resources.
	*/
	void addDoReference(GodotObject object)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addDoReference, _godot_object, object);
	}
	/**
	Register a reference for 'undo' that will be erased if the 'undo' history is lost. This is useful mostly for nodes removed with the 'do' call (not the 'undo' call!).
	*/
	void addUndoReference(GodotObject object)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addUndoReference, _godot_object, object);
	}
	/**
	Clear the undo/redo history and associated references.
	*/
	void clearHistory()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearHistory, _godot_object);
	}
	/**
	Get the name of the current action.
	*/
	String getCurrentActionName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getCurrentActionName, _godot_object);
	}
	/**
	Get the version, each time a new action is committed, the version number of the UndoRedo is increased automatically.
	This is useful mostly to check if something changed from a saved version.
	*/
	long getVersion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVersion, _godot_object);
	}
	/**
	Redo last action.
	*/
	bool redo()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.redo, _godot_object);
	}
	/**
	Undo last action.
	*/
	bool undo()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.undo, _godot_object);
	}
}
