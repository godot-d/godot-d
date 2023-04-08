/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.charfxtransform;
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
import godot.reference;
/**

*/
@GodotBaseClass struct CharFXTransform
{
	package(godot) enum string _GODOT_internal_name = "CharFXTransform";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_absolute_index") GodotMethod!(long) getAbsoluteIndex;
		@GodotName("get_character") GodotMethod!(long) getCharacter;
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("get_elapsed_time") GodotMethod!(double) getElapsedTime;
		@GodotName("get_environment") GodotMethod!(Dictionary) getEnvironment;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("get_relative_index") GodotMethod!(long) getRelativeIndex;
		@GodotName("is_visible") GodotMethod!(bool) isVisible;
		@GodotName("set_absolute_index") GodotMethod!(void, long) setAbsoluteIndex;
		@GodotName("set_character") GodotMethod!(void, long) setCharacter;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("set_elapsed_time") GodotMethod!(void, double) setElapsedTime;
		@GodotName("set_environment") GodotMethod!(void, Dictionary) setEnvironment;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("set_relative_index") GodotMethod!(void, long) setRelativeIndex;
		@GodotName("set_visibility") GodotMethod!(void, bool) setVisibility;
	}
	/// 
	pragma(inline, true) bool opEquals(in CharFXTransform other) const
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
	/// Construct a new instance of CharFXTransform.
	/// Note: use `memnew!CharFXTransform` instead.
	static CharFXTransform _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CharFXTransform");
		if(constructor is null) return typeof(this).init;
		return cast(CharFXTransform)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getAbsoluteIndex()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAbsoluteIndex, _godot_object);
	}
	/**
	
	*/
	long getCharacter()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCharacter, _godot_object);
	}
	/**
	
	*/
	Color getColor()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object);
	}
	/**
	
	*/
	double getElapsedTime()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getElapsedTime, _godot_object);
	}
	/**
	
	*/
	Dictionary getEnvironment()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getEnvironment, _godot_object);
	}
	/**
	
	*/
	Vector2 getOffset()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	long getRelativeIndex()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRelativeIndex, _godot_object);
	}
	/**
	
	*/
	bool isVisible()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isVisible, _godot_object);
	}
	/**
	
	*/
	void setAbsoluteIndex(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAbsoluteIndex, _godot_object, index);
	}
	/**
	
	*/
	void setCharacter(in long character)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCharacter, _godot_object, character);
	}
	/**
	
	*/
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	void setElapsedTime(in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setElapsedTime, _godot_object, time);
	}
	/**
	
	*/
	void setEnvironment(in Dictionary environment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEnvironment, _godot_object, environment);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setRelativeIndex(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRelativeIndex, _godot_object, index);
	}
	/**
	
	*/
	void setVisibility(in bool visibility)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVisibility, _godot_object, visibility);
	}
	/**
	
	*/
	@property long absoluteIndex()
	{
		return getAbsoluteIndex();
	}
	/// ditto
	@property void absoluteIndex(long v)
	{
		setAbsoluteIndex(v);
	}
	/**
	
	*/
	@property long character()
	{
		return getCharacter();
	}
	/// ditto
	@property void character(long v)
	{
		setCharacter(v);
	}
	/**
	
	*/
	@property Color color()
	{
		return getColor();
	}
	/// ditto
	@property void color(Color v)
	{
		setColor(v);
	}
	/**
	
	*/
	@property double elapsedTime()
	{
		return getElapsedTime();
	}
	/// ditto
	@property void elapsedTime(double v)
	{
		setElapsedTime(v);
	}
	/**
	
	*/
	@property Dictionary env()
	{
		return getEnvironment();
	}
	/// ditto
	@property void env(Dictionary v)
	{
		setEnvironment(v);
	}
	/**
	
	*/
	@property Vector2 offset()
	{
		return getOffset();
	}
	/// ditto
	@property void offset(Vector2 v)
	{
		setOffset(v);
	}
	/**
	
	*/
	@property long relativeIndex()
	{
		return getRelativeIndex();
	}
	/// ditto
	@property void relativeIndex(long v)
	{
		setRelativeIndex(v);
	}
	/**
	
	*/
	@property bool visible()
	{
		return isVisible();
	}
	/// ditto
	@property void visible(bool v)
	{
		setVisibility(v);
	}
}
