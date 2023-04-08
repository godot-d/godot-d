/**


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
		@GodotName("get_meta") GodotMethod!(Variant, String, Variant) getMeta;
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
		/** */
		connectDeferred = 1,
		/** */
		connectPersist = 2,
		/** */
		connectOneshot = 4,
		/** */
		connectReferenceCounted = 8,
	}
	/// 
	enum Constants : int
	{
		/** */
		notificationPostinitialize = 0,
		/** */
		notificationPredelete = 1,
		connectDeferred = 1,
		connectPersist = 2,
		connectOneshot = 4,
		connectReferenceCounted = 8,
	}
	/**
	
	*/
	Variant _get(in String property)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(property);
		String _GODOT_method_name = String("_get");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getPropertyList()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_property_list");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _init()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_init");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _notification(in long what)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(what);
		String _GODOT_method_name = String("_notification");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
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
	
	*/
	String _toString()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_to_string");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	void addUserSignal(in String signal, in Array arguments = Array.make())
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addUserSignal, _godot_object, signal, arguments);
	}
	/**
	
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
	
	*/
	Variant callv(in String method, in Array arg_array) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.callv, _godot_object, method, arg_array);
	}
	/**
	
	*/
	bool canTranslateMessages() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canTranslateMessages, _godot_object);
	}
	/**
	
	*/
	GodotError connect(in String signal, GodotObject target, in String method, in Array binds = Array.make(), in long flags = 0)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.connect, _godot_object, signal, target, method, binds, flags);
	}
	/**
	
	*/
	void disconnect(in String signal, GodotObject target, in String method)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnect, _godot_object, signal, target, method);
	}
	/**
	
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
	
	*/
	void free()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.free, _godot_object);
	}
	/**
	
	*/
	Variant get(in String property) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.get, _godot_object, property);
	}
	/**
	
	*/
	String getClass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getClass, _godot_object);
	}
	/**
	
	*/
	Array getIncomingConnections() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getIncomingConnections, _godot_object);
	}
	/**
	
	*/
	Variant getIndexed(NodePathArg0)(in NodePathArg0 property) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getIndexed, _godot_object, property);
	}
	/**
	
	*/
	long getInstanceId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getInstanceId, _godot_object);
	}
	/**
	
	*/
	Variant getMeta(VariantArg1)(in String name, in VariantArg1 _default = Variant.nil) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getMeta, _godot_object, name, _default);
	}
	/**
	
	*/
	PoolStringArray getMetaList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolStringArray)(GDNativeClassBinding.getMetaList, _godot_object);
	}
	/**
	
	*/
	Array getMethodList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getMethodList, _godot_object);
	}
	/**
	
	*/
	Array getPropertyList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getPropertyList, _godot_object);
	}
	/**
	
	*/
	Ref!Reference getScript() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Reference)(GDNativeClassBinding.getScript, _godot_object);
	}
	/**
	
	*/
	Array getSignalConnectionList(in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getSignalConnectionList, _godot_object, signal);
	}
	/**
	
	*/
	Array getSignalList() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getSignalList, _godot_object);
	}
	/**
	
	*/
	bool hasMeta(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasMeta, _godot_object, name);
	}
	/**
	
	*/
	bool hasMethod(in String method) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasMethod, _godot_object, method);
	}
	/**
	
	*/
	bool hasSignal(in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasSignal, _godot_object, signal);
	}
	/**
	
	*/
	bool hasUserSignal(in String signal) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasUserSignal, _godot_object, signal);
	}
	/**
	
	*/
	bool isBlockingSignals() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isBlockingSignals, _godot_object);
	}
	/**
	
	*/
	bool isClass(in String _class) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isClass, _godot_object, _class);
	}
	/**
	
	*/
	bool isConnected(in String signal, GodotObject target, in String method) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isConnected, _godot_object, signal, target, method);
	}
	/**
	
	*/
	bool isQueuedForDeletion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isQueuedForDeletion, _godot_object);
	}
	/**
	
	*/
	void notification(in long what, in bool reversed = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.notification, _godot_object, what, reversed);
	}
	/**
	
	*/
	void propertyListChangedNotify()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.propertyListChangedNotify, _godot_object);
	}
	/**
	
	*/
	void removeMeta(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeMeta, _godot_object, name);
	}
	/**
	
	*/
	void set(VariantArg1)(in String property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.set, _godot_object, property, value);
	}
	/**
	
	*/
	void setBlockSignals(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlockSignals, _godot_object, enable);
	}
	/**
	
	*/
	void setDeferred(VariantArg1)(in String property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDeferred, _godot_object, property, value);
	}
	/**
	
	*/
	void setIndexed(NodePathArg0, VariantArg1)(in NodePathArg0 property, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIndexed, _godot_object, property, value);
	}
	/**
	
	*/
	void setMessageTranslation(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMessageTranslation, _godot_object, enable);
	}
	/**
	
	*/
	void setMeta(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMeta, _godot_object, name, value);
	}
	/**
	
	*/
	void setScript(Reference script)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScript, _godot_object, script);
	}
	/**
	
	*/
	String toString()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.toString, _godot_object);
	}
	/**
	
	*/
	String tr(in String message) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.tr, _godot_object, message);
	}
}
