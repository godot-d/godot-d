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
	enum string _GODOT_internal_name = "Object";
public:
@nogc nothrow:
	godot_object _godot_object;
	alias BaseClasses = AliasSeq!();
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("free") GodotMethod!(void) free;
		@GodotName("_notification") GodotMethod!(void, long) _notification;
		@GodotName("_set") GodotMethod!(bool, String, Variant) _set;
		@GodotName("_get") GodotMethod!(Variant, String) _get;
		@GodotName("_get_property_list") GodotMethod!(Array) _getPropertyList;
		@GodotName("_init") GodotMethod!(void) _init;
		@GodotName("get_class") GodotMethod!(String) getClass;
		@GodotName("is_class") GodotMethod!(bool, String) isClass;
		@GodotName("set") GodotMethod!(void, String, Variant) set;
		@GodotName("get") GodotMethod!(Variant, String) get;
		@GodotName("set_indexed") GodotMethod!(void, NodePath, Variant) setIndexed;
		@GodotName("get_indexed") GodotMethod!(Variant, NodePath) getIndexed;
		@GodotName("get_property_list") GodotMethod!(Array) getPropertyList;
		@GodotName("get_method_list") GodotMethod!(Array) getMethodList;
		@GodotName("notification") GodotMethod!(void, long, bool) notification;
		@GodotName("get_instance_id") GodotMethod!(long) getInstanceId;
		@GodotName("set_script") GodotMethod!(void, Reference) setScript;
		@GodotName("get_script") GodotMethod!(Reference) getScript;
		@GodotName("set_meta") GodotMethod!(void, String, Variant) setMeta;
		@GodotName("get_meta") GodotMethod!(Variant, String) getMeta;
		@GodotName("has_meta") GodotMethod!(bool, String) hasMeta;
		@GodotName("get_meta_list") GodotMethod!(PoolStringArray) getMetaList;
		@GodotName("add_user_signal") GodotMethod!(void, String, Array) addUserSignal;
		@GodotName("has_user_signal") GodotMethod!(bool, String) hasUserSignal;
		@GodotName("emit_signal") GodotMethod!(Variant, String, GodotVarArgs) emitSignal;
		@GodotName("call") GodotMethod!(Variant, String, GodotVarArgs) call;
		@GodotName("call_deferred") GodotMethod!(Variant, String, GodotVarArgs) callDeferred;
		@GodotName("callv") GodotMethod!(Variant, String, Array) callv;
		@GodotName("has_method") GodotMethod!(bool, String) hasMethod;
		@GodotName("get_signal_list") GodotMethod!(Array) getSignalList;
		@GodotName("get_signal_connection_list") GodotMethod!(Array, String) getSignalConnectionList;
		@GodotName("get_incoming_connections") GodotMethod!(Array) getIncomingConnections;
		@GodotName("connect") GodotMethod!(GodotError, String, GodotObject, String, Array, long) connect;
		@GodotName("disconnect") GodotMethod!(void, String, GodotObject, String) disconnect;
		@GodotName("is_connected") GodotMethod!(bool, String, GodotObject, String) isConnected;
		@GodotName("set_block_signals") GodotMethod!(void, bool) setBlockSignals;
		@GodotName("is_blocking_signals") GodotMethod!(bool) isBlockingSignals;
		@GodotName("property_list_changed_notify") GodotMethod!(void) propertyListChangedNotify;
		@GodotName("set_message_translation") GodotMethod!(void, bool) setMessageTranslation;
		@GodotName("can_translate_messages") GodotMethod!(bool) canTranslateMessages;
		@GodotName("tr") GodotMethod!(String, String) tr;
		@GodotName("is_queued_for_deletion") GodotMethod!(bool) isQueuedForDeletion;
	}
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
	@disable new(size_t s);
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
		/**
		
		*/
		connectReferenceCounted = 8,
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
		connectReferenceCounted = 8,
	}
	/**
	Deletes the object from memory.
	*/
	void free()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.free, _godot_object);
	}
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
	/**
	Sets a property. Returns `true` if the `property` exists.
	*/
	bool _set(VariantArg1)(in String property, in VariantArg1 value)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(property);
		_GODOT_args.append(value);
		String _GODOT_method_name = String("_set");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Returns the given property. Returns `null` if the `property` does not exist.
	*/
	Variant _get(in String property)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(property);
		String _GODOT_method_name = String("_get");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns the object's property list as an $(D Array) of dictionaries. Dictionaries must contain: name:String, type:int (see TYPE_* enum in $(D @GlobalScope)) and optionally: hint:int (see PROPERTY_HINT_* in $(D @GlobalScope)), hint_string:String, usage:int (see PROPERTY_USAGE_* in $(D @GlobalScope)).
	*/
	Array _getPropertyList()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_property_list");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	The virtual method called upon initialization.
	*/
	void _init()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_init");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns the object's class as a $(D String).
	*/
	String getClass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getClass, _godot_object);
	}
	/**
	Returns `true` if the object inherits from the given `type`.
	*/
	bool isClass(in String type) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClass, _godot_object, type);
	}
	/**
	Set property into the object.
	*/
	void set(VariantArg1)(in String property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.set, _godot_object, property, value);
	}
	/**
	Returns a $(D Variant) for a `property`.
	*/
	Variant get(in String property) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.get, _godot_object, property);
	}
	/**
	
	*/
	void setIndexed(NodePathArg0, VariantArg1)(in NodePathArg0 property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIndexed, _godot_object, property, value);
	}
	/**
	Get indexed object property by String.
	Property indices get accessed with colon separation, for example: `position:x`
	*/
	Variant getIndexed(NodePathArg0)(in NodePathArg0 property) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getIndexed, _godot_object, property);
	}
	/**
	Returns the list of properties as an $(D Array) of dictionaries. Dictionaries contain: name:String, type:int (see TYPE_* enum in $(D @GlobalScope)) and optionally: hint:int (see PROPERTY_HINT_* in $(D @GlobalScope)), hint_string:String, usage:int (see PROPERTY_USAGE_* in $(D @GlobalScope)).
	*/
	Array getPropertyList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getPropertyList, _godot_object);
	}
	/**
	Returns the object's methods and their signatures as an $(D Array).
	*/
	Array getMethodList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getMethodList, _godot_object);
	}
	/**
	Notify the object of something.
	*/
	void notification(in long what, in bool reversed = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.notification, _godot_object, what, reversed);
	}
	/**
	Returns the object's unique instance ID.
	*/
	long getInstanceId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getInstanceId, _godot_object);
	}
	/**
	Set a script into the object, scripts extend the object functionality.
	*/
	void setScript(Reference script)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setScript, _godot_object, script);
	}
	/**
	Returns the object's $(D Script) or `null` if one doesn't exist.
	*/
	Reference getScript() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Reference)(_classBinding.getScript, _godot_object);
	}
	/**
	Set a metadata into the object. Metadata is serialized. Metadata can be $(I anything).
	*/
	void setMeta(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMeta, _godot_object, name, value);
	}
	/**
	Returns the object's metadata for the given `name`.
	*/
	Variant getMeta(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getMeta, _godot_object, name);
	}
	/**
	Returns `true` if a metadata is found with the given `name`.
	*/
	bool hasMeta(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasMeta, _godot_object, name);
	}
	/**
	Returns the object's metadata as a $(D PoolStringArray).
	*/
	PoolStringArray getMetaList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(_classBinding.getMetaList, _godot_object);
	}
	/**
	Adds a user-defined `signal`. Arguments are optional, but can be added as an $(D Array) of dictionaries, each containing "name" and "type" (from $(D @GlobalScope) TYPE_*).
	*/
	void addUserSignal(in String signal, in Array arguments = Array.empty_array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addUserSignal, _godot_object, signal, arguments);
	}
	/**
	Returns `true` if the given user-defined `signal` exists.
	*/
	bool hasUserSignal(in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasUserSignal, _godot_object, signal);
	}
	/**
	Emits the given `signal`.
	*/
	Variant emitSignal(VarArgs...)(in String signal, VarArgs varArgs)
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
	/**
	Calls the `method` on the object and returns a result. Pass parameters as a comma separated list.
	*/
	Variant call(VarArgs...)(in String method, VarArgs varArgs)
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
	/**
	Calls the `method` on the object during idle time and returns a result. Pass parameters as a comma separated list.
	*/
	Variant callDeferred(VarArgs...)(in String method, VarArgs varArgs)
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
	/**
	Calls the `method` on the object and returns a result. Pass parameters as an $(D Array).
	*/
	Variant callv(in String method, in Array arg_array) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.callv, _godot_object, method, arg_array);
	}
	/**
	Returns `true` if the object contains the given `method`.
	*/
	bool hasMethod(in String method) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasMethod, _godot_object, method);
	}
	/**
	Returns the list of signals as an $(D Array) of dictionaries.
	*/
	Array getSignalList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getSignalList, _godot_object);
	}
	/**
	Returns an $(D Array) of connections for the given `signal`.
	*/
	Array getSignalConnectionList(in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getSignalConnectionList, _godot_object, signal);
	}
	/**
	Returns an $(D Array) of dictionaries with information about signals that are connected to the object.
	Inside each $(D Dictionary) there are 3 fields:
	- "source" is a reference to signal emitter.
	- "signal_name" is name of connected signal.
	- "method_name" is a name of method to which signal is connected.
	*/
	Array getIncomingConnections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getIncomingConnections, _godot_object);
	}
	/**
	Connects a `signal` to a `method` on a `target` object. Pass optional `binds` to the call. Use `flags` to set deferred or one shot connections. See `CONNECT_*` constants. A `signal` can only be connected once to a `method`. It will throw an error if already connected. To avoid this, first use $(D isConnected) to check for existing connections.
	*/
	GodotError connect(in String signal, GodotObject target, in String method, in Array binds = Array.empty_array, in long flags = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.connect, _godot_object, signal, target, method, binds, flags);
	}
	/**
	Disconnects a `signal` from a `method` on the given `target`.
	*/
	void disconnect(in String signal, GodotObject target, in String method)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnect, _godot_object, signal, target, method);
	}
	/**
	Returns `true` if a connection exists for a given `signal`, `target`, and `method`.
	*/
	bool isConnected(in String signal, GodotObject target, in String method) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isConnected, _godot_object, signal, target, method);
	}
	/**
	If set to true, signal emission is blocked.
	*/
	void setBlockSignals(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBlockSignals, _godot_object, enable);
	}
	/**
	Returns `true` if signal emission blocking is enabled.
	*/
	bool isBlockingSignals() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isBlockingSignals, _godot_object);
	}
	/**
	
	*/
	void propertyListChangedNotify()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.propertyListChangedNotify, _godot_object);
	}
	/**
	Define whether the object can translate strings (with calls to $(D tr)). Default is true.
	*/
	void setMessageTranslation(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMessageTranslation, _godot_object, enable);
	}
	/**
	Returns `true` if the object can translate strings.
	*/
	bool canTranslateMessages() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.canTranslateMessages, _godot_object);
	}
	/**
	Translate a message. Only works if message translation is enabled (which it is by default). See $(D setMessageTranslation).
	*/
	String tr(in String message) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.tr, _godot_object, message);
	}
	/**
	Returns `true` if the `queue_free` method was called for the object.
	*/
	bool isQueuedForDeletion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isQueuedForDeletion, _godot_object);
	}
}
