/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.undoredo;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
/**

*/
@GodotBaseClass struct UndoRedo
{
	package(godot) enum string _GODOT_internal_name = "UndoRedo";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_do_method") GodotMethod!(void, GodotObject, String, GodotVarArgs) addDoMethod;
		@GodotName("add_do_property") GodotMethod!(void, GodotObject, String, Variant) addDoProperty;
		@GodotName("add_do_reference") GodotMethod!(void, GodotObject) addDoReference;
		@GodotName("add_undo_method") GodotMethod!(void, GodotObject, String, GodotVarArgs) addUndoMethod;
		@GodotName("add_undo_property") GodotMethod!(void, GodotObject, String, Variant) addUndoProperty;
		@GodotName("add_undo_reference") GodotMethod!(void, GodotObject) addUndoReference;
		@GodotName("clear_history") GodotMethod!(void, bool) clearHistory;
		@GodotName("commit_action") GodotMethod!(void) commitAction;
		@GodotName("create_action") GodotMethod!(void, String, long) createAction;
		@GodotName("get_current_action_name") GodotMethod!(String) getCurrentActionName;
		@GodotName("get_version") GodotMethod!(long) getVersion;
		@GodotName("has_redo") GodotMethod!(bool) hasRedo;
		@GodotName("has_undo") GodotMethod!(bool) hasUndo;
		@GodotName("is_commiting_action") GodotMethod!(bool) isCommitingAction;
		@GodotName("redo") GodotMethod!(bool) redo;
		@GodotName("undo") GodotMethod!(bool) undo;
	}
	/// 
	pragma(inline, true) bool opEquals(in UndoRedo other) const
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
	/// Construct a new instance of UndoRedo.
	/// Note: use `memnew!UndoRedo` instead.
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
		/** */
		mergeDisable = 0,
		/** */
		mergeEnds = 1,
		/** */
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
	
	*/
	void addDoMethod(VarArgs...)(GodotObject object, in String method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(object);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("add_do_method");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addDoProperty(VariantArg2)(GodotObject object, in String property, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addDoProperty, _godot_object, object, property, value);
	}
	/**
	
	*/
	void addDoReference(GodotObject object)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addDoReference, _godot_object, object);
	}
	/**
	
	*/
	void addUndoMethod(VarArgs...)(GodotObject object, in String method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(object);
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("add_undo_method");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addUndoProperty(VariantArg2)(GodotObject object, in String property, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addUndoProperty, _godot_object, object, property, value);
	}
	/**
	
	*/
	void addUndoReference(GodotObject object)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addUndoReference, _godot_object, object);
	}
	/**
	
	*/
	void clearHistory(in bool increase_version = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearHistory, _godot_object, increase_version);
	}
	/**
	
	*/
	void commitAction()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.commitAction, _godot_object);
	}
	/**
	
	*/
	void createAction(in String name, in long merge_mode = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.createAction, _godot_object, name, merge_mode);
	}
	/**
	
	*/
	String getCurrentActionName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getCurrentActionName, _godot_object);
	}
	/**
	
	*/
	long getVersion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getVersion, _godot_object);
	}
	/**
	
	*/
	bool hasRedo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasRedo, _godot_object);
	}
	/**
	
	*/
	bool hasUndo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasUndo, _godot_object);
	}
	/**
	
	*/
	bool isCommitingAction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCommitingAction, _godot_object);
	}
	/**
	
	*/
	bool redo()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.redo, _godot_object);
	}
	/**
	
	*/
	bool undo()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.undo, _godot_object);
	}
}
