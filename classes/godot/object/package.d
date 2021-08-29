/**
Base class for all non-built-in types.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.object;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.classdb;
import godot.reference;
/**
Base class for all non-built-in types.

Every class which is not a built-in type inherits from this class.
You can construct Objects from scripting languages, using `Object.new()` in GDScript, `new Object` in C#, or the "Construct Object" node in VisualScript.
Objects do not manage memory. If a class inherits from Object, you will have to delete instances of it manually. To do so, call the $(D free) method from your script or delete the instance from C++.
Some classes that extend Object add memory management. This is the case of $(D Reference), which counts references and deletes itself automatically when no longer referenced. $(D Node), another fundamental type, deletes all its children when freed from memory.
Objects export properties, which are mainly useful for storage and editing, but not really so much in programming. Properties are exported in $(D _getPropertyList) and handled in $(D _get) and $(D _set). However, scripting languages and C++ have simpler means to export them.
Property membership can be tested directly in GDScript using `in`:


var n = Node2D.new()
print("position" in n) # Prints "True".
print("other_property" in n) # Prints "False".


The `in` operator will evaluate to `true` as long as the key exists, even if the value is `null`.
Objects also receive notifications. Notifications are a simple way to notify the object about different events, so they can all be handled together. See $(D _notification).
$(B Note:) Unlike references to a $(D Reference), references to an Object stored in a variable can become invalid without warning. Therefore, it's recommended to use $(D Reference) for data classes instead of $(D GodotObject).
$(B Note:) Due to a bug, you can't create a "plain" Object using `Object.new()`. Instead, use `ClassDB.instance("Object")`. This bug only applies to Object itself, not any of its descendents like $(D Reference).
*/
@GodotBaseClass struct GodotObject
{
	package(godot) enum string _GODOT_internal_name = "Object";
public:
@nogc nothrow:
	godot_object _godot_object;
	alias BaseClasses = AliasSeq!();
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get") GodotMethod!(Variant, String) _get;
		@GodotName("_get_property_list") GodotMethod!(Array) _getPropertyList;
		@GodotName("_init") GodotMethod!(void) _init;
		@GodotName("_notification") GodotMethod!(void, long) _notification;
		@GodotName("_set") GodotMethod!(bool, String, Variant) _set;
		@GodotName("_to_string") GodotMethod!(String) _toString;
		@GodotName("add_user_signal") GodotMethod!(void, String, Array) addUserSignal;
		@GodotName("call") GodotMethod!(Variant, String, GodotVarArgs) call;
		@GodotName("call_deferred") GodotMethod!(void, String, GodotVarArgs) callDeferred;
		@GodotName("callv") GodotMethod!(Variant, String, Array) callv;
		@GodotName("can_translate_messages") GodotMethod!(bool) canTranslateMessages;
		@GodotName("connect") GodotMethod!(GodotError, String, GodotObject, String, Array, long) connect;
		@GodotName("disconnect") GodotMethod!(void, String, GodotObject, String) disconnect;
		@GodotName("emit_signal") GodotMethod!(void, String, GodotVarArgs) emitSignal;
		@GodotName("free") GodotMethod!(void) free;
		@GodotName("get") GodotMethod!(Variant, String) get;
		@GodotName("get_class") GodotMethod!(String) getClass;
		@GodotName("get_incoming_connections") GodotMethod!(Array) getIncomingConnections;
		@GodotName("get_indexed") GodotMethod!(Variant, NodePath) getIndexed;
		@GodotName("get_instance_id") GodotMethod!(long) getInstanceId;
		@GodotName("get_meta") GodotMethod!(Variant, String) getMeta;
		@GodotName("get_meta_list") GodotMethod!(PoolStringArray) getMetaList;
		@GodotName("get_method_list") GodotMethod!(Array) getMethodList;
		@GodotName("get_property_list") GodotMethod!(Array) getPropertyList;
		@GodotName("get_script") GodotMethod!(Reference) getScript;
		@GodotName("get_signal_connection_list") GodotMethod!(Array, String) getSignalConnectionList;
		@GodotName("get_signal_list") GodotMethod!(Array) getSignalList;
		@GodotName("has_meta") GodotMethod!(bool, String) hasMeta;
		@GodotName("has_method") GodotMethod!(bool, String) hasMethod;
		@GodotName("has_signal") GodotMethod!(bool, String) hasSignal;
		@GodotName("has_user_signal") GodotMethod!(bool, String) hasUserSignal;
		@GodotName("is_blocking_signals") GodotMethod!(bool) isBlockingSignals;
		@GodotName("is_class") GodotMethod!(bool, String) isClass;
		@GodotName("is_connected") GodotMethod!(bool, String, GodotObject, String) isConnected;
		@GodotName("is_queued_for_deletion") GodotMethod!(bool) isQueuedForDeletion;
		@GodotName("notification") GodotMethod!(void, long, bool) notification;
		@GodotName("property_list_changed_notify") GodotMethod!(void) propertyListChangedNotify;
		@GodotName("remove_meta") GodotMethod!(void, String) removeMeta;
		@GodotName("set") GodotMethod!(void, String, Variant) set;
		@GodotName("set_block_signals") GodotMethod!(void, bool) setBlockSignals;
		@GodotName("set_deferred") GodotMethod!(void, String, Variant) setDeferred;
		@GodotName("set_indexed") GodotMethod!(void, NodePath, Variant) setIndexed;
		@GodotName("set_message_translation") GodotMethod!(void, bool) setMessageTranslation;
		@GodotName("set_meta") GodotMethod!(void, String, Variant) setMeta;
		@GodotName("set_script") GodotMethod!(void, Reference) setScript;
		@GodotName("to_string") GodotMethod!(String) toString;
		@GodotName("tr") GodotMethod!(String, String) tr;
	}
	/// 
	pragma(inline, true) bool opEquals(in GodotObject other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	pragma(inline, true) int opCmp(in GodotObject other) const
	{ const void* a = _godot_object.ptr, b = other._godot_object.ptr; return a is b ? 0 : a < b ? -1 : 1; }
	/// 
	pragma(inline, true) int opCmp(T)(in T other) const if(extendsGodotBaseClass!T)
	{ const void* a = _godot_object.ptr, b = other.owner._godot_object.ptr; return a is b ? 0 : a < b ? -1 : 1; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of GodotObject.
	/// Note: use `memnew!GodotObject` instead.
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
		Connects a signal in deferred mode. This way, signal emissions are stored in a queue, then set on idle time.
		*/
		connectDeferred = 1,
		/**
		Persisting connections are saved when the object is serialized to file.
		*/
		connectPersist = 2,
		/**
		One-shot connections disconnect themselves after emission.
		*/
		connectOneshot = 4,
		/**
		Connect a signal as reference-counted. This means that a given signal can be connected several times to the same target, and will only be fully disconnected once no references are left.
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
		/**
		Called before the object is about to be deleted.
		*/
		notificationPredelete = 1,
		connectDeferred = 1,
		connectPersist = 2,
		connectOneshot = 4,
		connectReferenceCounted = 8,
	}
	/**
	Virtual method which can be overridden to customize the return value of $(D get).
	Returns the given property. Returns `null` if the `property` does not exist.
	*/
	Variant _get(in String property)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(property);
		String _GODOT_method_name = String("_get");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Virtual method which can be overridden to customize the return value of $(D getPropertyList).
	Returns the object's property list as an $(D Array) of dictionaries.
	Each property's $(D Dictionary) must contain at least `name: String` and `type: int` (see $(D Variant.type)) entries. Optionally, it can also include `hint: int` (see $(D propertyhint)), `hint_string: String`, and `usage: int` (see $(D propertyusageflags)).
	*/
	Array _getPropertyList()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_property_list");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	Called when the object is initialized.
	*/
	void _init()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_init");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Called whenever the object receives a notification, which is identified in `what` by a constant. The base $(D GodotObject) has two constants $(D constant NOTIFICATION_POSTINITIALIZE) and $(D constant NOTIFICATION_PREDELETE), but subclasses such as $(D Node) define a lot more notifications which are also received by this method.
	*/
	void _notification(in long what)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(what);
		String _GODOT_method_name = String("_notification");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Virtual method which can be overridden to customize the return value of $(D set).
	Sets a property. Returns `true` if the `property` exists.
	*/
	bool _set(VariantArg1)(in String property, in VariantArg1 value)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(property);
		_GODOT_args.append(value);
		String _GODOT_method_name = String("_set");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	Virtual method which can be overridden to customize the return value of $(D toString), and thus the object's representation where it is converted to a string, e.g. with `print(obj)`.
	Returns a $(D String) representing the object. If not overridden, defaults to `"$(D ClassName:RID)"`.
	*/
	String _toString()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_to_string");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Adds a user-defined `signal`. Arguments are optional, but can be added as an $(D Array) of dictionaries, each containing `name: String` and `type: int` (see $(D Variant.type)) entries.
	*/
	void addUserSignal(in String signal, in Array arguments = Array.make())
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addUserSignal, _godot_object, signal, arguments);
	}
	/**
	Calls the `method` on the object and returns the result. This method supports a variable number of arguments, so parameters are passed as a comma separated list. Example:
	
	
	call("set", "position", Vector2(42.0, 0.0))
	
	
	$(B Note:) In C#, the method name must be specified as snake_case if it is defined by a built-in Godot node. This doesn't apply to user-defined methods where you should use the same convention as in the C# source (typically PascalCase).
	*/
	Variant call(VarArgs...)(in String method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Calls the `method` on the object during idle time. This method supports a variable number of arguments, so parameters are passed as a comma separated list. Example:
	
	
	call_deferred("set", "position", Vector2(42.0, 0.0))
	
	
	$(B Note:) In C#, the method name must be specified as snake_case if it is defined by a built-in Godot node. This doesn't apply to user-defined methods where you should use the same convention as in the C# source (typically PascalCase).
	*/
	void callDeferred(VarArgs...)(in String method, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(method);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("call_deferred");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Calls the `method` on the object and returns the result. Contrarily to $(D call), this method does not support a variable number of arguments but expects all parameters to be via a single $(D Array).
	
	
	callv("set", $(D  "position", Vector2(42.0, 0.0) ))
	
	
	*/
	Variant callv(in String method, in Array arg_array) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.callv, _godot_object, method, arg_array);
	}
	/**
	Returns `true` if the object can translate strings. See $(D setMessageTranslation) and $(D tr).
	*/
	bool canTranslateMessages() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canTranslateMessages, _godot_object);
	}
	/**
	Connects a `signal` to a `method` on a `target` object. Pass optional `binds` to the call as an $(D Array) of parameters. These parameters will be passed to the method after any parameter used in the call to $(D emitSignal). Use `flags` to set deferred or one-shot connections. See $(D connectflags) constants.
	A `signal` can only be connected once to a `method`. It will throw an error if already connected, unless the signal was connected with $(D constant CONNECT_REFERENCE_COUNTED). To avoid this, first, use $(D isConnected) to check for existing connections.
	If the `target` is destroyed in the game's lifecycle, the connection will be lost.
	Examples:
	
	
	connect("pressed", self, "_on_Button_pressed") # BaseButton signal
	connect("text_entered", self, "_on_LineEdit_text_entered") # LineEdit signal
	connect("hit", self, "_on_Player_hit", $(D  weapon_type, damage )) # User-defined signal
	
	
	An example of the relationship between `binds` passed to $(D connect) and parameters used when calling $(D emitSignal):
	
	
	connect("hit", self, "_on_Player_hit", $(D  weapon_type, damage )) # weapon_type and damage are passed last
	emit_signal("hit", "Dark lord", 5) # "Dark lord" and 5 are passed first
	func _on_Player_hit(hit_by, level, weapon_type, damage):
	    print("Hit by %s (lvl %d) with weapon %s for %d damage" % $(D hit_by, level, weapon_type, damage))
	
	
	*/
	GodotError connect(in String signal, GodotObject target, in String method, in Array binds = Array.make(), in long flags = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.connect, _godot_object, signal, target, method, binds, flags);
	}
	/**
	Disconnects a `signal` from a `method` on the given `target`.
	If you try to disconnect a connection that does not exist, the method will throw an error. Use $(D isConnected) to ensure that the connection exists.
	*/
	void disconnect(in String signal, GodotObject target, in String method)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnect, _godot_object, signal, target, method);
	}
	/**
	Emits the given `signal`. The signal must exist, so it should be a built-in signal of this class or one of its parent classes, or a user-defined signal. This method supports a variable number of arguments, so parameters are passed as a comma separated list. Example:
	
	
	emit_signal("hit", weapon_type, damage)
	emit_signal("game_over")
	
	
	*/
	void emitSignal(VarArgs...)(in String signal, VarArgs varArgs)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(signal);
		foreach(vai, VA; VarArgs)
		{
			_GODOT_args.append(varArgs[vai]);
		}
		String _GODOT_method_name = String("emit_signal");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Deletes the object from memory immediately. For $(D Node)s, you may want to use $(D Node.queueFree) to queue the node for safe deletion at the end of the current frame.
	$(B Important:) If you have a variable pointing to an object, it will $(I not) be assigned to `null` once the object is freed. Instead, it will point to a $(I previously freed instance) and you should validate it with $(D @GDScript.isInstanceValid) before attempting to call its methods or access its properties.
	*/
	void free()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.free, _godot_object);
	}
	/**
	Returns the $(D Variant) value of the given `property`. If the `property` doesn't exist, this will return `null`.
	$(B Note:) In C#, the property name must be specified as snake_case if it is defined by a built-in Godot node. This doesn't apply to user-defined properties where you should use the same convention as in the C# source (typically PascalCase).
	*/
	Variant get(in String property) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.get, _godot_object, property);
	}
	/**
	Returns the object's class as a $(D String).
	*/
	String getClass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getClass, _godot_object);
	}
	/**
	Returns an $(D Array) of dictionaries with information about signals that are connected to the object.
	Each $(D Dictionary) contains three String entries:
	- `source` is a reference to the signal emitter.
	- `signal_name` is the name of the connected signal.
	- `method_name` is the name of the method to which the signal is connected.
	*/
	Array getIncomingConnections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getIncomingConnections, _godot_object);
	}
	/**
	Gets the object's property indexed by the given $(D NodePath). The node path should be relative to the current object and can use the colon character (`:`) to access nested properties. Examples: `"position:x"` or `"material:next_pass:blend_mode"`.
	*/
	Variant getIndexed(NodePathArg0)(in NodePathArg0 property) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getIndexed, _godot_object, property);
	}
	/**
	Returns the object's unique instance ID.
	This ID can be saved in $(D EncodedObjectAsID), and can be used to retrieve the object instance with $(D @GDScript.instanceFromId).
	*/
	long getInstanceId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getInstanceId, _godot_object);
	}
	/**
	Returns the object's metadata entry for the given `name`.
	*/
	Variant getMeta(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getMeta, _godot_object, name);
	}
	/**
	Returns the object's metadata as a $(D PoolStringArray).
	*/
	PoolStringArray getMetaList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getMetaList, _godot_object);
	}
	/**
	Returns the object's methods and their signatures as an $(D Array).
	*/
	Array getMethodList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getMethodList, _godot_object);
	}
	/**
	Returns the object's property list as an $(D Array) of dictionaries.
	Each property's $(D Dictionary) contain at least `name: String` and `type: int` (see $(D Variant.type)) entries. Optionally, it can also include `hint: int` (see $(D propertyhint)), `hint_string: String`, and `usage: int` (see $(D propertyusageflags)).
	*/
	Array getPropertyList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getPropertyList, _godot_object);
	}
	/**
	Returns the object's $(D Script) instance, or `null` if none is assigned.
	*/
	Ref!Reference getScript() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Reference)(GDNativeClassBinding.getScript, _godot_object);
	}
	/**
	Returns an $(D Array) of connections for the given `signal`.
	*/
	Array getSignalConnectionList(in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getSignalConnectionList, _godot_object, signal);
	}
	/**
	Returns the list of signals as an $(D Array) of dictionaries.
	*/
	Array getSignalList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getSignalList, _godot_object);
	}
	/**
	Returns `true` if a metadata entry is found with the given `name`.
	*/
	bool hasMeta(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasMeta, _godot_object, name);
	}
	/**
	Returns `true` if the object contains the given `method`.
	*/
	bool hasMethod(in String method) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasMethod, _godot_object, method);
	}
	/**
	Returns `true` if the given `signal` exists.
	*/
	bool hasSignal(in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasSignal, _godot_object, signal);
	}
	/**
	Returns `true` if the given user-defined `signal` exists. Only signals added using $(D addUserSignal) are taken into account.
	*/
	bool hasUserSignal(in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasUserSignal, _godot_object, signal);
	}
	/**
	Returns `true` if signal emission blocking is enabled.
	*/
	bool isBlockingSignals() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBlockingSignals, _godot_object);
	}
	/**
	Returns `true` if the object inherits from the given `class`.
	*/
	bool isClass(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isClass, _godot_object, _class);
	}
	/**
	Returns `true` if a connection exists for a given `signal`, `target`, and `method`.
	*/
	bool isConnected(in String signal, GodotObject target, in String method) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isConnected, _godot_object, signal, target, method);
	}
	/**
	Returns `true` if the $(D Node.queueFree) method was called for the object.
	*/
	bool isQueuedForDeletion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isQueuedForDeletion, _godot_object);
	}
	/**
	Send a given notification to the object, which will also trigger a call to the $(D _notification) method of all classes that the object inherits from.
	If `reversed` is `true`, $(D _notification) is called first on the object's own class, and then up to its successive parent classes. If `reversed` is `false`, $(D _notification) is called first on the highest ancestor ($(D GodotObject) itself), and then down to its successive inheriting classes.
	*/
	void notification(in long what, in bool reversed = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.notification, _godot_object, what, reversed);
	}
	/**
	Notify the editor that the property list has changed, so that editor plugins can take the new values into account. Does nothing on export builds.
	*/
	void propertyListChangedNotify()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.propertyListChangedNotify, _godot_object);
	}
	/**
	Removes a given entry from the object's metadata. See also $(D setMeta).
	*/
	void removeMeta(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeMeta, _godot_object, name);
	}
	/**
	Assigns a new value to the given property. If the `property` does not exist, nothing will happen.
	$(B Note:) In C#, the property name must be specified as snake_case if it is defined by a built-in Godot node. This doesn't apply to user-defined properties where you should use the same convention as in the C# source (typically PascalCase).
	*/
	void set(VariantArg1)(in String property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.set, _godot_object, property, value);
	}
	/**
	If set to `true`, signal emission is blocked.
	*/
	void setBlockSignals(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlockSignals, _godot_object, enable);
	}
	/**
	Assigns a new value to the given property, after the current frame's physics step. This is equivalent to calling $(D set) via $(D callDeferred), i.e. `call_deferred("set", property, value)`.
	$(B Note:) In C#, the property name must be specified as snake_case if it is defined by a built-in Godot node. This doesn't apply to user-defined properties where you should use the same convention as in the C# source (typically PascalCase).
	*/
	void setDeferred(VariantArg1)(in String property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDeferred, _godot_object, property, value);
	}
	/**
	Assigns a new value to the property identified by the $(D NodePath). The node path should be relative to the current object and can use the colon character (`:`) to access nested properties. Example:
	
	
	set_indexed("position", Vector2(42, 0))
	set_indexed("position:y", -10)
	print(position) # (42, -10)
	
	
	*/
	void setIndexed(NodePathArg0, VariantArg1)(in NodePathArg0 property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIndexed, _godot_object, property, value);
	}
	/**
	Defines whether the object can translate strings (with calls to $(D tr)). Enabled by default.
	*/
	void setMessageTranslation(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMessageTranslation, _godot_object, enable);
	}
	/**
	Adds, changes or removes a given entry in the object's metadata. Metadata are serialized and can take any $(D Variant) value.
	To remove a given entry from the object's metadata, use $(D removeMeta). Metadata is also removed if its value is set to `null`. This means you can also use `set_meta("name", null)` to remove metadata for `"name"`.
	*/
	void setMeta(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMeta, _godot_object, name, value);
	}
	/**
	Assigns a script to the object. Each object can have a single script assigned to it, which are used to extend its functionality.
	If the object already had a script, the previous script instance will be freed and its variables and state will be lost. The new script's $(D _init) method will be called.
	*/
	void setScript(Reference script)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScript, _godot_object, script);
	}
	/**
	Returns a $(D String) representing the object. If not overridden, defaults to `"$(D ClassName:RID)"`.
	Override the method $(D _toString) to customize the $(D String) representation.
	*/
	String toString()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.toString, _godot_object);
	}
	/**
	Translates a message using translation catalogs configured in the Project Settings.
	Only works if message translation is enabled (which it is by default), otherwise it returns the `message` unchanged. See $(D setMessageTranslation).
	*/
	String tr(in String message) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.tr, _godot_object, message);
	}
}
