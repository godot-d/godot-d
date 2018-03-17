/**
Base class for all non built-in types.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.object;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.classdb;
import godot.reference;
/**
Base class for all non built-in types.

Everything not a built-in type starts the inheritance chain from this class.
Objects do not manage memory, if inheriting from one the object will most likely have to be deleted manually (call the $(D free) function from the script or delete from C++).
Some derivatives add memory management, such as $(D Reference) (which keeps a reference count and deletes itself automatically when no longer referenced) and $(D Node), which deletes the children tree when deleted.
Objects export properties, which are mainly useful for storage and editing, but not really so much in programming. Properties are exported in $(D _getPropertyList) and handled in $(D _get) and $(D _set). However, scripting languages and C++ have simpler means to export them.
Objects also receive notifications ($(D _notification)). Notifications are a simple way to notify the object about simple events, so they can all be handled together.
*/
@GodotBaseClass struct GodotObject
{
	static immutable string _GODOT_internal_name = "Object";
public:
@nogc nothrow:
	godot_object _godot_object;
	alias BaseClasses = AliasSeq!();
	bool opEquals(in GodotObject other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GodotObject opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GodotObject _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Object");
		if(constructor is null) return typeof(this).init;
		return cast(GodotObject)(constructor());
	}
	/// 
	enum ConnectFlags : int
	{
		/**
		Connect a signal in deferred mode. This way, signal emissions are stored in a queue, then set on idle time.
		*/
		connectDeferred = 1,
		/**
		Persisting connections are saved when the object is serialized to file.
		*/
		connectPersist = 2,
		/**
		One shot connections disconnect themselves after emission.
		*/
		connectOneshot = 4,
	}
	/// 
	enum Constants : int
	{
		/**
		Called right when the object is initialized. Not available in script.
		*/
		notificationPostinitialize = 0,
		connectDeferred = 1,
		/**
		Called before the object is about to be deleted.
		*/
		notificationPredelete = 1,
		connectPersist = 2,
		connectOneshot = 4,
	}
	package(godot) static GodotMethod!(void) _GODOT_free;
	package(godot) alias _GODOT_methodBindInfo(string name : "free") = _GODOT_free;
	/**
	Deletes the object from memory.
	*/
	void free()
	{
		_GODOT_free.bind("Object", "free");
		ptrcall!(void)(_GODOT_free, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT__notification;
	package(godot) alias _GODOT_methodBindInfo(string name : "_notification") = _GODOT__notification;
	/**
	Notify the object internally using an ID.
	*/
	void _notification(in long what)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(what);
		String _GODOT_method_name = String("_notification");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(bool, String, Variant) _GODOT__set;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set") = _GODOT__set;
	/**
	Sets a property. Returns `true` if the `property` exists.
	*/
	bool _set(StringArg0, VariantArg1)(in StringArg0 property, in VariantArg1 value)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(property);
		_GODOT_args.append(value);
		String _GODOT_method_name = String("_set");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	package(godot) static GodotMethod!(void, String) _GODOT__get;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get") = _GODOT__get;
	/**
	Returns the given property. Returns `null` if the `property` does not exist.
	*/
	void _get(StringArg0)(in StringArg0 property)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(property);
		String _GODOT_method_name = String("_get");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_property_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_property_list") = _GODOT__get_property_list;
	/**
	Returns the object's property list as an $(D Array) of dictionaries. Dictionaries must contain: name:String, type:int (see TYPE_* enum in $(D @GlobalScope)) and optionally: hint:int (see PROPERTY_HINT_* in $(D @GlobalScope)), hint_string:String, usage:int (see PROPERTY_USAGE_* in $(D @GlobalScope)).
	*/
	Array _getPropertyList()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_property_list");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	package(godot) static GodotMethod!(void) _GODOT__init;
	package(godot) alias _GODOT_methodBindInfo(string name : "_init") = _GODOT__init;
	/**
	The virtual method called upon initialization.
	*/
	void _init()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_init");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_class;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_class") = _GODOT_get_class;
	/**
	Returns the object's class as a $(D String).
	*/
	String getClass() const
	{
		_GODOT_get_class.bind("Object", "get_class");
		return ptrcall!(String)(_GODOT_get_class, _godot_object);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_is_class;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_class") = _GODOT_is_class;
	/**
	Returns `true` if the object inherits from the given `type`.
	*/
	bool isClass(StringArg0)(in StringArg0 type) const
	{
		_GODOT_is_class.bind("Object", "is_class");
		return ptrcall!(bool)(_GODOT_is_class, _godot_object, type);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set;
	package(godot) alias _GODOT_methodBindInfo(string name : "set") = _GODOT_set;
	/**
	Set property into the object.
	*/
	void set(StringArg0, VariantArg1)(in StringArg0 property, in VariantArg1 value)
	{
		_GODOT_set.bind("Object", "set");
		ptrcall!(void)(_GODOT_set, _godot_object, property, value);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_get;
	package(godot) alias _GODOT_methodBindInfo(string name : "get") = _GODOT_get;
	/**
	Returns a $(D Variant) for a `property`.
	*/
	Variant get(StringArg0)(in StringArg0 property) const
	{
		_GODOT_get.bind("Object", "get");
		return ptrcall!(Variant)(_GODOT_get, _godot_object, property);
	}
	package(godot) static GodotMethod!(void, NodePath, Variant) _GODOT_set_indexed;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_indexed") = _GODOT_set_indexed;
	/**
	
	*/
	void setIndexed(NodePathArg0, VariantArg1)(in NodePathArg0 property, in VariantArg1 value)
	{
		_GODOT_set_indexed.bind("Object", "set_indexed");
		ptrcall!(void)(_GODOT_set_indexed, _godot_object, property, value);
	}
	package(godot) static GodotMethod!(Variant, NodePath) _GODOT_get_indexed;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_indexed") = _GODOT_get_indexed;
	/**
	
	*/
	Variant getIndexed(NodePathArg0)(in NodePathArg0 property) const
	{
		_GODOT_get_indexed.bind("Object", "get_indexed");
		return ptrcall!(Variant)(_GODOT_get_indexed, _godot_object, property);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_property_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_property_list") = _GODOT_get_property_list;
	/**
	Returns the list of properties as an $(D Array) of dictionaries. Dictionaries contain: name:String, type:int (see TYPE_* enum in $(D @GlobalScope)) and optionally: hint:int (see PROPERTY_HINT_* in $(D @GlobalScope)), hint_string:String, usage:int (see PROPERTY_USAGE_* in $(D @GlobalScope)).
	*/
	Array getPropertyList() const
	{
		_GODOT_get_property_list.bind("Object", "get_property_list");
		return ptrcall!(Array)(_GODOT_get_property_list, _godot_object);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_method_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_method_list") = _GODOT_get_method_list;
	/**
	Returns the object's methods and their signatures as an $(D Array).
	*/
	Array getMethodList() const
	{
		_GODOT_get_method_list.bind("Object", "get_method_list");
		return ptrcall!(Array)(_GODOT_get_method_list, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, bool) _GODOT_notification;
	package(godot) alias _GODOT_methodBindInfo(string name : "notification") = _GODOT_notification;
	/**
	Notify the object of something.
	*/
	void notification(in long what, in bool reversed = false)
	{
		_GODOT_notification.bind("Object", "notification");
		ptrcall!(void)(_GODOT_notification, _godot_object, what, reversed);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_instance_id") = _GODOT_get_instance_id;
	/**
	Returns the object's unique instance ID.
	*/
	long getInstanceId() const
	{
		_GODOT_get_instance_id.bind("Object", "get_instance_id");
		return ptrcall!(long)(_GODOT_get_instance_id, _godot_object);
	}
	package(godot) static GodotMethod!(void, Reference) _GODOT_set_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_script") = _GODOT_set_script;
	/**
	Set a script into the object, scripts extend the object functionality.
	*/
	void setScript(Reference script)
	{
		_GODOT_set_script.bind("Object", "set_script");
		ptrcall!(void)(_GODOT_set_script, _godot_object, script);
	}
	package(godot) static GodotMethod!(Reference) _GODOT_get_script;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_script") = _GODOT_get_script;
	/**
	Returns the object's $(D Script) or `null` if one doesn't exist.
	*/
	Reference getScript() const
	{
		_GODOT_get_script.bind("Object", "get_script");
		return ptrcall!(Reference)(_GODOT_get_script, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Variant) _GODOT_set_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_meta") = _GODOT_set_meta;
	/**
	Set a metadata into the object. Metadata is serialized. Metadata can be $(I anything).
	*/
	void setMeta(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		_GODOT_set_meta.bind("Object", "set_meta");
		ptrcall!(void)(_GODOT_set_meta, _godot_object, name, value);
	}
	package(godot) static GodotMethod!(Variant, String) _GODOT_get_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_meta") = _GODOT_get_meta;
	/**
	Returns the object's metadata for the given `name`.
	*/
	Variant getMeta(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_meta.bind("Object", "get_meta");
		return ptrcall!(Variant)(_GODOT_get_meta, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_meta;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_meta") = _GODOT_has_meta;
	/**
	Returns `true` if a metadata is found with the given `name`.
	*/
	bool hasMeta(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_meta.bind("Object", "has_meta");
		return ptrcall!(bool)(_GODOT_has_meta, _godot_object, name);
	}
	package(godot) static GodotMethod!(PoolStringArray) _GODOT_get_meta_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_meta_list") = _GODOT_get_meta_list;
	/**
	Returns the object's metadata as a $(D PoolStringArray).
	*/
	PoolStringArray getMetaList() const
	{
		_GODOT_get_meta_list.bind("Object", "get_meta_list");
		return ptrcall!(PoolStringArray)(_GODOT_get_meta_list, _godot_object);
	}
	package(godot) static GodotMethod!(void, String, Array) _GODOT_add_user_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_user_signal") = _GODOT_add_user_signal;
	/**
	Adds a user-defined `signal`. Arguments are optional, but can be added as an $(D Array) of dictionaries, each containing "name" and "type" (from $(D @GlobalScope) TYPE_*).
	*/
	void addUserSignal(StringArg0)(in StringArg0 signal, in Array arguments = Array.empty_array)
	{
		_GODOT_add_user_signal.bind("Object", "add_user_signal");
		ptrcall!(void)(_GODOT_add_user_signal, _godot_object, signal, arguments);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_user_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_user_signal") = _GODOT_has_user_signal;
	/**
	Returns `true` if the given user-defined `signal` exists.
	*/
	bool hasUserSignal(StringArg0)(in StringArg0 signal) const
	{
		_GODOT_has_user_signal.bind("Object", "has_user_signal");
		return ptrcall!(bool)(_GODOT_has_user_signal, _godot_object, signal);
	}
	package(godot) static GodotMethod!(Variant, String, GodotVarArgs) _GODOT_emit_signal;
	package(godot) alias _GODOT_methodBindInfo(string name : "emit_signal") = _GODOT_emit_signal;
	/**
	Emits the given `signal`.
	*/
	Variant emitSignal(StringArg0, VarArgs...)(in StringArg0 signal, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(signal);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("emit_signal");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, String, GodotVarArgs) _GODOT_call;
	package(godot) alias _GODOT_methodBindInfo(string name : "call") = _GODOT_call;
	/**
	Calls the `method` on the object and returns a result. Pass parameters as a comma separated list.
	*/
	Variant call(StringArg0, VarArgs...)(in StringArg0 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, String, GodotVarArgs) _GODOT_call_deferred;
	package(godot) alias _GODOT_methodBindInfo(string name : "call_deferred") = _GODOT_call_deferred;
	/**
	Calls the `method` on the object during idle time and returns a result. Pass parameters as a comma separated list.
	*/
	Variant callDeferred(StringArg0, VarArgs...)(in StringArg0 method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call_deferred");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Variant, String, Array) _GODOT_callv;
	package(godot) alias _GODOT_methodBindInfo(string name : "callv") = _GODOT_callv;
	/**
	Calls the `method` on the object and returns a result. Pass parameters as an $(D Array).
	*/
	Variant callv(StringArg0)(in StringArg0 method, in Array arg_array) const
	{
		_GODOT_callv.bind("Object", "callv");
		return ptrcall!(Variant)(_GODOT_callv, _godot_object, method, arg_array);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_method;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_method") = _GODOT_has_method;
	/**
	Returns `true` if the object contains the given `method`.
	*/
	bool hasMethod(StringArg0)(in StringArg0 method) const
	{
		_GODOT_has_method.bind("Object", "has_method");
		return ptrcall!(bool)(_GODOT_has_method, _godot_object, method);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_signal_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_signal_list") = _GODOT_get_signal_list;
	/**
	Returns the list of signals as an $(D Array) of dictionaries.
	*/
	Array getSignalList() const
	{
		_GODOT_get_signal_list.bind("Object", "get_signal_list");
		return ptrcall!(Array)(_GODOT_get_signal_list, _godot_object);
	}
	package(godot) static GodotMethod!(Array, String) _GODOT_get_signal_connection_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_signal_connection_list") = _GODOT_get_signal_connection_list;
	/**
	Returns an $(D Array) of connections for the given `signal`.
	*/
	Array getSignalConnectionList(StringArg0)(in StringArg0 signal) const
	{
		_GODOT_get_signal_connection_list.bind("Object", "get_signal_connection_list");
		return ptrcall!(Array)(_GODOT_get_signal_connection_list, _godot_object, signal);
	}
	package(godot) static GodotMethod!(Array) _GODOT_get_incoming_connections;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_incoming_connections") = _GODOT_get_incoming_connections;
	/**
	Returns an $(D Array) of dictionaries with information about signals that are connected to the object.
	Inside each $(D Dictionary) there are 3 fields:
	- "source" is a reference to signal emitter.
	- "signal_name" is name of connected signal.
	- "method_name" is a name of method to which signal is connected.
	*/
	Array getIncomingConnections() const
	{
		_GODOT_get_incoming_connections.bind("Object", "get_incoming_connections");
		return ptrcall!(Array)(_GODOT_get_incoming_connections, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, String, GodotObject, String, Array, long) _GODOT_connect;
	package(godot) alias _GODOT_methodBindInfo(string name : "connect") = _GODOT_connect;
	/**
	Connects a `signal` to a `method` on a `target` object. Pass optional `binds` to the call. Use `flags` to set deferred or one shot connections. See `CONNECT_*` constants. A `signal` can only be connected once to a `method`. It will throw an error if already connected. To avoid this, first use $(D isConnected) to check for existing connections.
	*/
	GodotError connect(StringArg0, StringArg2)(in StringArg0 signal, GodotObject target, in StringArg2 method, in Array binds = Array.empty_array, in long flags = 0)
	{
		_GODOT_connect.bind("Object", "connect");
		return ptrcall!(GodotError)(_GODOT_connect, _godot_object, signal, target, method, binds, flags);
	}
	package(godot) static GodotMethod!(void, String, GodotObject, String) _GODOT_disconnect;
	package(godot) alias _GODOT_methodBindInfo(string name : "disconnect") = _GODOT_disconnect;
	/**
	Disconnects a `signal` from a `method` on the given `target`.
	*/
	void disconnect(StringArg0, StringArg2)(in StringArg0 signal, GodotObject target, in StringArg2 method)
	{
		_GODOT_disconnect.bind("Object", "disconnect");
		ptrcall!(void)(_GODOT_disconnect, _godot_object, signal, target, method);
	}
	package(godot) static GodotMethod!(bool, String, GodotObject, String) _GODOT_is_connected;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_connected") = _GODOT_is_connected;
	/**
	Returns `true` if a connection exists for a given `signal`, `target`, and `method`.
	*/
	bool isConnected(StringArg0, StringArg2)(in StringArg0 signal, GodotObject target, in StringArg2 method) const
	{
		_GODOT_is_connected.bind("Object", "is_connected");
		return ptrcall!(bool)(_GODOT_is_connected, _godot_object, signal, target, method);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_block_signals;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_block_signals") = _GODOT_set_block_signals;
	/**
	If set to true, signal emission is blocked.
	*/
	void setBlockSignals(in bool enable)
	{
		_GODOT_set_block_signals.bind("Object", "set_block_signals");
		ptrcall!(void)(_GODOT_set_block_signals, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_blocking_signals;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_blocking_signals") = _GODOT_is_blocking_signals;
	/**
	Returns `true` if signal emission blocking is enabled.
	*/
	bool isBlockingSignals() const
	{
		_GODOT_is_blocking_signals.bind("Object", "is_blocking_signals");
		return ptrcall!(bool)(_GODOT_is_blocking_signals, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_property_list_changed_notify;
	package(godot) alias _GODOT_methodBindInfo(string name : "property_list_changed_notify") = _GODOT_property_list_changed_notify;
	/**
	
	*/
	void propertyListChangedNotify()
	{
		_GODOT_property_list_changed_notify.bind("Object", "property_list_changed_notify");
		ptrcall!(void)(_GODOT_property_list_changed_notify, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_message_translation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_message_translation") = _GODOT_set_message_translation;
	/**
	Define whether the object can translate strings (with calls to $(D tr)). Default is true.
	*/
	void setMessageTranslation(in bool enable)
	{
		_GODOT_set_message_translation.bind("Object", "set_message_translation");
		ptrcall!(void)(_GODOT_set_message_translation, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_can_translate_messages;
	package(godot) alias _GODOT_methodBindInfo(string name : "can_translate_messages") = _GODOT_can_translate_messages;
	/**
	Returns `true` if the object can translate strings.
	*/
	bool canTranslateMessages() const
	{
		_GODOT_can_translate_messages.bind("Object", "can_translate_messages");
		return ptrcall!(bool)(_GODOT_can_translate_messages, _godot_object);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_tr;
	package(godot) alias _GODOT_methodBindInfo(string name : "tr") = _GODOT_tr;
	/**
	Translate a message. Only works if message translation is enabled (which it is by default). See $(D setMessageTranslation).
	*/
	String tr(StringArg0)(in StringArg0 message) const
	{
		_GODOT_tr.bind("Object", "tr");
		return ptrcall!(String)(_GODOT_tr, _godot_object, message);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_queued_for_deletion;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_queued_for_deletion") = _GODOT_is_queued_for_deletion;
	/**
	Returns `true` if the `queue_free` method was called for the object.
	*/
	bool isQueuedForDeletion() const
	{
		_GODOT_is_queued_for_deletion.bind("Object", "is_queued_for_deletion");
		return ptrcall!(bool)(_GODOT_is_queued_for_deletion, _godot_object);
	}
}
