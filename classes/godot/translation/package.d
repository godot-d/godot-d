/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.translation;
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
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct Translation
{
	package(godot) enum string _GODOT_internal_name = "Translation";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_message") GodotMethod!(String, String) _getMessage;
		@GodotName("_get_messages") GodotMethod!(PoolStringArray) _getMessages;
		@GodotName("_set_messages") GodotMethod!(void, PoolStringArray) _setMessages;
		@GodotName("add_message") GodotMethod!(void, String, String) addMessage;
		@GodotName("erase_message") GodotMethod!(void, String) eraseMessage;
		@GodotName("get_locale") GodotMethod!(String) getLocale;
		@GodotName("get_message") GodotMethod!(String, String) getMessage;
		@GodotName("get_message_count") GodotMethod!(long) getMessageCount;
		@GodotName("get_message_list") GodotMethod!(PoolStringArray) getMessageList;
		@GodotName("set_locale") GodotMethod!(void, String) setLocale;
	}
	/// 
	pragma(inline, true) bool opEquals(in Translation other) const
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
	/// Construct a new instance of Translation.
	/// Note: use `memnew!Translation` instead.
	static Translation _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Translation");
		if(constructor is null) return typeof(this).init;
		return cast(Translation)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	String _getMessage(in String src_message)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(src_message);
		String _GODOT_method_name = String("_get_message");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	PoolStringArray _getMessages() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_messages");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolStringArray);
	}
	/**
	
	*/
	void _setMessages(in PoolStringArray arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_messages");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addMessage(in String src_message, in String xlated_message)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addMessage, _godot_object, src_message, xlated_message);
	}
	/**
	
	*/
	void eraseMessage(in String src_message)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.eraseMessage, _godot_object, src_message);
	}
	/**
	
	*/
	String getLocale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLocale, _godot_object);
	}
	/**
	
	*/
	String getMessage(in String src_message) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getMessage, _godot_object, src_message);
	}
	/**
	
	*/
	long getMessageCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMessageCount, _godot_object);
	}
	/**
	
	*/
	PoolStringArray getMessageList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getMessageList, _godot_object);
	}
	/**
	
	*/
	void setLocale(in String locale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLocale, _godot_object, locale);
	}
	/**
	
	*/
	@property String locale()
	{
		return getLocale();
	}
	/// ditto
	@property void locale(String v)
	{
		setLocale(v);
	}
	/**
	
	*/
	@property PoolStringArray messages()
	{
		return _getMessages();
	}
	/// ditto
	@property void messages(PoolStringArray v)
	{
		_setMessages(v);
	}
}
