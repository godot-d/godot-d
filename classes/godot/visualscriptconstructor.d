/**
A Visual Script node which calls a base type constructor.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptconstructor;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**
A Visual Script node which calls a base type constructor.

It can be used for type conversion as well.
*/
@GodotBaseClass struct VisualScriptConstructor
{
	enum string _GODOT_internal_name = "VisualScriptConstructor";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_constructor") GodotMethod!(Dictionary) getConstructor;
		@GodotName("get_constructor_type") GodotMethod!(Variant.Type) getConstructorType;
		@GodotName("set_constructor") GodotMethod!(void, Dictionary) setConstructor;
		@GodotName("set_constructor_type") GodotMethod!(void, long) setConstructorType;
	}
	bool opEquals(in VisualScriptConstructor other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptConstructor opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptConstructor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptConstructor");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptConstructor)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Dictionary getConstructor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getConstructor, _godot_object);
	}
	/**
	
	*/
	Variant.Type getConstructorType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(_classBinding.getConstructorType, _godot_object);
	}
	/**
	
	*/
	void setConstructor(in Dictionary constructor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstructor, _godot_object, constructor);
	}
	/**
	
	*/
	void setConstructorType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstructorType, _godot_object, type);
	}
	/**
	
	*/
	@property Dictionary constructor()
	{
		return getConstructor();
	}
	/// ditto
	@property void constructor(Dictionary v)
	{
		setConstructor(v);
	}
	/**
	
	*/
	@property Variant.Type type()
	{
		return getConstructorType();
	}
	/// ditto
	@property void type(long v)
	{
		setConstructorType(v);
	}
}
