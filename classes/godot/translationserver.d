/**
Server that manages all translations. Translations can be set to it and removed from it.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.translationserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.translation;
/**
Server that manages all translations. Translations can be set to it and removed from it.
*/
@GodotBaseClass struct TranslationServerSingleton
{
	static immutable string _GODOT_internal_name = "TranslationServer";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "TranslationServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in TranslationServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TranslationServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static TranslationServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TranslationServer");
		if(constructor is null) return typeof(this).init;
		return cast(TranslationServerSingleton)(constructor());
	}
	package(godot) static GodotMethod!(void, String) _GODOT_set_locale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_locale") = _GODOT_set_locale;
	/**
	
	*/
	void setLocale(StringArg0)(in StringArg0 locale)
	{
		_GODOT_set_locale.bind("TranslationServer", "set_locale");
		ptrcall!(void)(_GODOT_set_locale, _godot_object, locale);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_locale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_locale") = _GODOT_get_locale;
	/**
	
	*/
	String getLocale() const
	{
		_GODOT_get_locale.bind("TranslationServer", "get_locale");
		return ptrcall!(String)(_GODOT_get_locale, _godot_object);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_locale_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_locale_name") = _GODOT_get_locale_name;
	/**
	
	*/
	String getLocaleName(StringArg0)(in StringArg0 locale) const
	{
		_GODOT_get_locale_name.bind("TranslationServer", "get_locale_name");
		return ptrcall!(String)(_GODOT_get_locale_name, _godot_object, locale);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_translate;
	package(godot) alias _GODOT_methodBindInfo(string name : "translate") = _GODOT_translate;
	/**
	
	*/
	String translate(StringArg0)(in StringArg0 message) const
	{
		_GODOT_translate.bind("TranslationServer", "translate");
		return ptrcall!(String)(_GODOT_translate, _godot_object, message);
	}
	package(godot) static GodotMethod!(void, Translation) _GODOT_add_translation;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_translation") = _GODOT_add_translation;
	/**
	
	*/
	void addTranslation(Translation translation)
	{
		_GODOT_add_translation.bind("TranslationServer", "add_translation");
		ptrcall!(void)(_GODOT_add_translation, _godot_object, translation);
	}
	package(godot) static GodotMethod!(void, Translation) _GODOT_remove_translation;
	package(godot) alias _GODOT_methodBindInfo(string name : "remove_translation") = _GODOT_remove_translation;
	/**
	
	*/
	void removeTranslation(Translation translation)
	{
		_GODOT_remove_translation.bind("TranslationServer", "remove_translation");
		ptrcall!(void)(_GODOT_remove_translation, _godot_object, translation);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	
	*/
	void clear()
	{
		_GODOT_clear.bind("TranslationServer", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
}
/// Returns: the TranslationServerSingleton
@property @nogc nothrow pragma(inline, true)
TranslationServerSingleton TranslationServer()
{
	return TranslationServerSingleton._GODOT_singleton();
}
