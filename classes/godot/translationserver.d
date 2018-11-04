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
	enum string _GODOT_internal_name = "TranslationServer";
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
		immutable char* _singletonName = "TranslationServer";
		@GodotName("set_locale") GodotMethod!(void, String) setLocale;
		@GodotName("get_locale") GodotMethod!(String) getLocale;
		@GodotName("get_locale_name") GodotMethod!(String, String) getLocaleName;
		@GodotName("translate") GodotMethod!(String, String) translate;
		@GodotName("add_translation") GodotMethod!(void, Translation) addTranslation;
		@GodotName("remove_translation") GodotMethod!(void, Translation) removeTranslation;
		@GodotName("clear") GodotMethod!(void) clear;
	}
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
	@disable new(size_t s);
	/**
	
	*/
	void setLocale(in String locale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLocale, _godot_object, locale);
	}
	/**
	
	*/
	String getLocale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getLocale, _godot_object);
	}
	/**
	
	*/
	String getLocaleName(in String locale) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getLocaleName, _godot_object, locale);
	}
	/**
	
	*/
	String translate(in String message) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.translate, _godot_object, message);
	}
	/**
	
	*/
	void addTranslation(Translation translation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addTranslation, _godot_object, translation);
	}
	/**
	
	*/
	void removeTranslation(Translation translation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeTranslation, _godot_object, translation);
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
}
/// Returns: the TranslationServerSingleton
@property @nogc nothrow pragma(inline, true)
TranslationServerSingleton TranslationServer()
{
	checkClassBinding!TranslationServerSingleton();
	return TranslationServerSingleton(TranslationServerSingleton._classBinding._singleton);
}
