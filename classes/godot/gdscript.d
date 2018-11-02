/**
A script implemented in the GDScript programming language.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gdscript;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.script;
import godot.resource;
import godot.reference;
/**
A script implemented in the GDScript programming language.

The script exends the functionality of all objects that instance it.
$(D _new) creates a new instance of the script. $(D GodotObject.setScript) extends an existing object, if that object's class matches one of the script's base classes.
*/
@GodotBaseClass struct GDScript
{
	enum string _GODOT_internal_name = "GDScript";
public:
@nogc nothrow:
	union { godot_object _godot_object; Script _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("new") GodotMethod!(GodotObject, GodotVarArgs) _new;
		@GodotName("get_as_byte_code") GodotMethod!(PoolByteArray) getAsByteCode;
	}
	bool opEquals(in GDScript other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GDScript opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GDScript _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GDScript");
		if(constructor is null) return typeof(this).init;
		return cast(GDScript)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns a new instance of the script.
	For example:
	
	
	var MyClass = load("myclass.gd")
	var instance = MyClass.new()
	assert(instance.get_script() == MyClass)
	
	
	*/
	GodotObject _new(VarArgs...)(VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("new");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!GodotObject);
	}
	/**
	Returns byte code for the script source code.
	*/
	PoolByteArray getAsByteCode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.getAsByteCode, _godot_object);
	}
}
