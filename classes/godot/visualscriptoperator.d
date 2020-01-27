/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptoperator;
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
import godot.resource;
import godot.reference;
/**
$(B Input Ports:)
- Data (variant): `A`
- Data (variant): `B`
$(B Output Ports:)
- Data (variant): `result`
*/
@GodotBaseClass struct VisualScriptOperator
{
	enum string _GODOT_internal_name = "VisualScriptOperator";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_operator") GodotMethod!(Variant.Operator) getOperator;
		@GodotName("get_typed") GodotMethod!(Variant.Type) getTyped;
		@GodotName("set_operator") GodotMethod!(void, long) setOperator;
		@GodotName("set_typed") GodotMethod!(void, long) setTyped;
	}
	bool opEquals(in VisualScriptOperator other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptOperator opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptOperator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptOperator");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptOperator)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Variant.Operator getOperator() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Operator)(_classBinding.getOperator, _godot_object);
	}
	/**
	
	*/
	Variant.Type getTyped() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant.Type)(_classBinding.getTyped, _godot_object);
	}
	/**
	
	*/
	void setOperator(in long op)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOperator, _godot_object, op);
	}
	/**
	
	*/
	void setTyped(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTyped, _godot_object, type);
	}
	/**
	
	*/
	@property Variant.Operator operator()
	{
		return getOperator();
	}
	/// ditto
	@property void operator(long v)
	{
		setOperator(v);
	}
	/**
	
	*/
	@property Variant.Type type()
	{
		return getTyped();
	}
	/// ditto
	@property void type(long v)
	{
		setTyped(v);
	}
}
