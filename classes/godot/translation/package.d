/**
Language Translation.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.translation;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.reference;
/**
Language Translation.

Translations are resources that can be loaded and unloaded on demand. They map a string to another string.
*/
@GodotBaseClass struct Translation
{
	enum string _GODOT_internal_name = "Translation";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
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
	bool opEquals(in Translation other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Translation opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	Adds a message if nonexistent, followed by its translation.
	*/
	void addMessage(in String src_message, in String xlated_message)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addMessage, _godot_object, src_message, xlated_message);
	}
	/**
	Erases a message.
	*/
	void eraseMessage(in String src_message)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.eraseMessage, _godot_object, src_message);
	}
	/**
	
	*/
	String getLocale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getLocale, _godot_object);
	}
	/**
	Returns a message's translation.
	*/
	String getMessage(in String src_message) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getMessage, _godot_object, src_message);
	}
	/**
	Returns the number of existing messages.
	*/
	long getMessageCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMessageCount, _godot_object);
	}
	/**
	Returns all the messages (keys).
	*/
	PoolStringArray getMessageList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getMessageList, _godot_object);
	}
	/**
	
	*/
	void setLocale(in String locale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLocale, _godot_object, locale);
	}
	/**
	The locale of the translation.
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
