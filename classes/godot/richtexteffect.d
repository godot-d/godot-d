/**
A custom effect for use with $(D RichTextLabel).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.richtexteffect;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.reference;
import godot.charfxtransform;
/**
A custom effect for use with $(D RichTextLabel).

$(B Note:) For a $(D RichTextEffect) to be usable, a BBCode tag must be defined as a member variable called `bbcode` in the script.


# The RichTextEffect will be usable like this: `$(D example)Some text$(D /example)`
var bbcode = "example"


$(B Note:) As soon as a $(D RichTextLabel) contains at least one $(D RichTextEffect), it will continuously process the effect unless the project is paused. This may impact battery life negatively.
*/
@GodotBaseClass struct RichTextEffect
{
	package(godot) enum string _GODOT_internal_name = "RichTextEffect";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_process_custom_fx") GodotMethod!(bool, CharFXTransform) _processCustomFx;
	}
	/// 
	pragma(inline, true) bool opEquals(in RichTextEffect other) const
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
	/// Construct a new instance of RichTextEffect.
	/// Note: use `memnew!RichTextEffect` instead.
	static RichTextEffect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RichTextEffect");
		if(constructor is null) return typeof(this).init;
		return cast(RichTextEffect)(constructor());
	}
	@disable new(size_t s);
	/**
	Override this method to modify properties in `char_fx`. The method must return `true` if the character could be transformed successfully. If the method returns `false`, it will skip transformation to avoid displaying broken text.
	*/
	bool _processCustomFx(CharFXTransform char_fx)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(char_fx);
		String _GODOT_method_name = String("_process_custom_fx");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
}
