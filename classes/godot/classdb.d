/**
Class information repository.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.classdb;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
/**
Class information repository.

Provides access to metadata stored for every available class.
*/
@GodotBaseClass struct ClassDBSingleton
{
	enum string _GODOT_internal_name = "_ClassDB";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "ClassDB";
		@GodotName("can_instance") GodotMethod!(bool, String) canInstance;
		@GodotName("class_exists") GodotMethod!(bool, String) classExists;
		@GodotName("class_get_category") GodotMethod!(String, String) classGetCategory;
		@GodotName("class_get_integer_constant") GodotMethod!(long, String, String) classGetIntegerConstant;
		@GodotName("class_get_integer_constant_list") GodotMethod!(PoolStringArray, String, bool) classGetIntegerConstantList;
		@GodotName("class_get_method_list") GodotMethod!(Array, String, bool) classGetMethodList;
		@GodotName("class_get_property") GodotMethod!(Variant, GodotObject, String) classGetProperty;
		@GodotName("class_get_property_list") GodotMethod!(Array, String, bool) classGetPropertyList;
		@GodotName("class_get_signal") GodotMethod!(Dictionary, String, String) classGetSignal;
		@GodotName("class_get_signal_list") GodotMethod!(Array, String, bool) classGetSignalList;
		@GodotName("class_has_integer_constant") GodotMethod!(bool, String, String) classHasIntegerConstant;
		@GodotName("class_has_method") GodotMethod!(bool, String, String, bool) classHasMethod;
		@GodotName("class_has_signal") GodotMethod!(bool, String, String) classHasSignal;
		@GodotName("class_set_property") GodotMethod!(GodotError, GodotObject, String, Variant) classSetProperty;
		@GodotName("get_class_list") GodotMethod!(PoolStringArray) getClassList;
		@GodotName("get_inheriters_from_class") GodotMethod!(PoolStringArray, String) getInheritersFromClass;
		@GodotName("get_parent_class") GodotMethod!(String, String) getParentClass;
		@GodotName("instance") GodotMethod!(Variant, String) instance;
		@GodotName("is_class_enabled") GodotMethod!(bool, String) isClassEnabled;
		@GodotName("is_parent_class") GodotMethod!(bool, String, String) isParentClass;
	}
	bool opEquals(in ClassDBSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ClassDBSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ClassDBSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_ClassDB");
		if(constructor is null) return typeof(this).init;
		return cast(ClassDBSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns `true` if you can instance objects from the specified `class`, `false` in other case.
	*/
	bool canInstance(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.canInstance, _godot_object, _class);
	}
	/**
	Returns whether the specified `class` is available or not.
	*/
	bool classExists(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.classExists, _godot_object, _class);
	}
	/**
	Returns a category associated with the class for use in documentation and the Asset Library. Debug mode required.
	*/
	String classGetCategory(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.classGetCategory, _godot_object, _class);
	}
	/**
	Returns the value of the integer constant `name` of `class` or its ancestry. Always returns 0 when the constant could not be found.
	*/
	long classGetIntegerConstant(in String _class, in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.classGetIntegerConstant, _godot_object, _class, name);
	}
	/**
	Returns an array with the names all the integer constants of `class` or its ancestry.
	*/
	PoolStringArray classGetIntegerConstantList(in String _class, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.classGetIntegerConstantList, _godot_object, _class, no_inheritance);
	}
	/**
	Returns an array with all the methods of `class` or its ancestry if `no_inheritance` is `false`. Every element of the array is a $(D Dictionary) with the following keys: `args`, `default_args`, `flags`, `id`, `name`, `return: (class_name, hint, hint_string, name, type, usage)`.
	*/
	Array classGetMethodList(in String _class, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.classGetMethodList, _godot_object, _class, no_inheritance);
	}
	/**
	Returns the value of `property` of `class` or its ancestry.
	*/
	Variant classGetProperty(GodotObject object, in String property) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.classGetProperty, _godot_object, object, property);
	}
	/**
	Returns an array with all the properties of `class` or its ancestry if `no_inheritance` is `false`.
	*/
	Array classGetPropertyList(in String _class, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.classGetPropertyList, _godot_object, _class, no_inheritance);
	}
	/**
	Returns the `signal` data of `class` or its ancestry. The returned value is a $(D Dictionary) with the following keys: `args`, `default_args`, `flags`, `id`, `name`, `return: (class_name, hint, hint_string, name, type, usage)`.
	*/
	Dictionary classGetSignal(in String _class, in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.classGetSignal, _godot_object, _class, signal);
	}
	/**
	Returns an array with all the signals of `class` or its ancestry if `no_inheritance` is `false`. Every element of the array is a $(D Dictionary) as described in $(D classGetSignal).
	*/
	Array classGetSignalList(in String _class, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.classGetSignalList, _godot_object, _class, no_inheritance);
	}
	/**
	Returns whether `class` or its ancestry has an integer constant called `name` or not.
	*/
	bool classHasIntegerConstant(in String _class, in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.classHasIntegerConstant, _godot_object, _class, name);
	}
	/**
	Returns whether `class` (or its ancestry if `no_inheritance` is `false`) has a method called `method` or not.
	*/
	bool classHasMethod(in String _class, in String method, in bool no_inheritance = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.classHasMethod, _godot_object, _class, method, no_inheritance);
	}
	/**
	Returns whether `class` or its ancestry has a signal called `signal` or not.
	*/
	bool classHasSignal(in String _class, in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.classHasSignal, _godot_object, _class, signal);
	}
	/**
	Sets `property` value of `class` to `value`.
	*/
	GodotError classSetProperty(VariantArg2)(GodotObject object, in String property, in VariantArg2 value) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.classSetProperty, _godot_object, object, property, value);
	}
	/**
	Returns the names of all the classes available.
	*/
	PoolStringArray getClassList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getClassList, _godot_object);
	}
	/**
	Returns the names of all the classes that directly or indirectly inherit from `class`.
	*/
	PoolStringArray getInheritersFromClass(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getInheritersFromClass, _godot_object, _class);
	}
	/**
	Returns the parent class of `class`.
	*/
	String getParentClass(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getParentClass, _godot_object, _class);
	}
	/**
	Creates an instance of `class`.
	*/
	Variant instance(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.instance, _godot_object, _class);
	}
	/**
	Returns whether this `class` is enabled or not.
	*/
	bool isClassEnabled(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClassEnabled, _godot_object, _class);
	}
	/**
	Returns whether `inherits` is an ancestor of `class` or not.
	*/
	bool isParentClass(in String _class, in String inherits) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isParentClass, _godot_object, _class, inherits);
	}
}
/// Returns: the ClassDBSingleton
@property @nogc nothrow pragma(inline, true)
ClassDBSingleton ClassDB()
{
	checkClassBinding!ClassDBSingleton();
	return ClassDBSingleton(ClassDBSingleton._classBinding._singleton);
}
