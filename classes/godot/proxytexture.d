/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.proxytexture;
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
import godot.texture;
/**

*/
@GodotBaseClass struct ProxyTexture
{
	package(godot) enum string _GODOT_internal_name = "ProxyTexture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_base") GodotMethod!(Texture) getBase;
		@GodotName("set_base") GodotMethod!(void, Texture) setBase;
	}
	/// 
	pragma(inline, true) bool opEquals(in ProxyTexture other) const
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
	/// Construct a new instance of ProxyTexture.
	/// Note: use `memnew!ProxyTexture` instead.
	static ProxyTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ProxyTexture");
		if(constructor is null) return typeof(this).init;
		return cast(ProxyTexture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!Texture getBase() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getBase, _godot_object);
	}
	/**
	
	*/
	void setBase(Texture base)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBase, _godot_object, base);
	}
	/**
	
	*/
	@property Texture base()
	{
		return getBase();
	}
	/// ditto
	@property void base(Texture v)
	{
		setBase(v);
	}
}
