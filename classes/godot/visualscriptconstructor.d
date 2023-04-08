/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptconstructor;
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
import godot.visualscriptnode;
/**

*/
@GodotBaseClass struct VisualScriptConstructor
{
	package(godot) enum string _GODOT_internal_name = "VisualScriptConstructor";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_constructor") GodotMethod!(Dictionary) getConstructor;
		@GodotName("get_constructor_type") GodotMethod!(Variant.Type) getConstructorType;
		@GodotName("set_constructor") GodotMethod!(void, Dictionary) setConstructor;
		@GodotName("set_constructor_type") GodotMethod!(void, long) setConstructorType;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualScriptConstructor other) const
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
	/// Construct a new instance of VisualScriptConstructor.
	/// Note: use `memnew!VisualScriptConstructor` instead.
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
		return ptrcall!(Dictionary)(GDNativeClassBinding.getConstructor, _godot_object);
	}
	/**
	
	*/
	Variant.Type getConstructorType() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(GDNativeClassBinding.getConstructorType, _godot_object);
	}
	/**
	
	*/
	void setConstructor(in Dictionary constructor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConstructor, _godot_object, constructor);
	}
	/**
	
	*/
	void setConstructorType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConstructorType, _godot_object, type);
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
