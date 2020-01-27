/**
Controls how an individual character will be displayed in a $(D RichTextEffect).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.charfxtransform;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
Controls how an individual character will be displayed in a $(D RichTextEffect).

By setting various properties on this object, you can control how individual characters will be displayed in a $(D RichTextEffect).
*/
@GodotBaseClass struct CharFXTransform
{
	enum string _GODOT_internal_name = "CharFXTransform";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
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
	bool opEquals(in CharFXTransform other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CharFXTransform opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		return ptrcall!(long)(_classBinding.getAbsoluteIndex, _godot_object);
	}
	/**
	
	*/
	long getCharacter()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCharacter, _godot_object);
	}
	/**
	
	*/
	Color getColor()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getColor, _godot_object);
	}
	/**
	
	*/
	double getElapsedTime()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getElapsedTime, _godot_object);
	}
	/**
	
	*/
	Dictionary getEnvironment()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(_classBinding.getEnvironment, _godot_object);
	}
	/**
	
	*/
	Vector2 getOffset()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	long getRelativeIndex()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRelativeIndex, _godot_object);
	}
	/**
	
	*/
	bool isVisible()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isVisible, _godot_object);
	}
	/**
	
	*/
	void setAbsoluteIndex(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAbsoluteIndex, _godot_object, index);
	}
	/**
	
	*/
	void setCharacter(in long character)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCharacter, _godot_object, character);
	}
	/**
	
	*/
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	void setElapsedTime(in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setElapsedTime, _godot_object, time);
	}
	/**
	
	*/
	void setEnvironment(in Dictionary environment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEnvironment, _godot_object, environment);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setRelativeIndex(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRelativeIndex, _godot_object, index);
	}
	/**
	
	*/
	void setVisibility(in bool visibility)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVisibility, _godot_object, visibility);
	}
	/**
	The index of the current character (starting from 0). Setting this property won't affect drawing.
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
	The Unicode codepoint the character will use. This only affects non-whitespace characters. $(D @GDScript.ord) can be useful here. For example, the following will replace all characters with asterisks:
	
	
	# `char_fx` is the CharFXTransform parameter from `_process_custom_fx()`.
	# See the RichTextEffect documentation for details.
	char_fx.character = ord("*")
	
	
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
	The color the character will be drawn with.
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
	The time elapsed since the $(D RichTextLabel) was added to the scene tree (in seconds). Time stops when the project is paused, unless the $(D RichTextLabel)'s $(D Node.pauseMode) is set to $(D constant Node.PAUSE_MODE_PROCESS).
	$(B Note:) Time still passes while the $(D RichTextLabel) is hidden.
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
	Contains the arguments passed in the opening BBCode tag. By default, arguments are strings; if their contents match a type such as $(D bool), $(D long) or $(D double), they will be converted automatically. Color codes in the form `#rrggbb` or `#rgb` will be converted to an opaque $(D Color). String arguments may not contain spaces, even if they're quoted. If present, quotes will also be present in the final string.
	For example, the opening BBCode tag `$(D example foo=hello bar=true baz=42 color=#ffffff)` will map to the following $(D Dictionary):
	
	
	{"foo": "hello", "bar": true, "baz": 42, "color": Color(1, 1, 1, 1)}
	
	
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
	The position offset the character will be drawn with (in pixels).
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
	The index of the current character (starting from 0). Setting this property won't affect drawing.
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
	If `true`, the character will be drawn. If `false`, the character will be hidden. Characters around hidden characters will reflow to take the space of hidden characters. If this is not desired, set their $(D color) to `Color(1, 1, 1, 0)` instead.
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
