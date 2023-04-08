/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.portal;
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
import godot.spatial;
/**

*/
@GodotBaseClass struct Portal
{
	package(godot) enum string _GODOT_internal_name = "Portal";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_linked_room") GodotMethod!(NodePath) getLinkedRoom;
		@GodotName("get_points") GodotMethod!(PoolVector2Array) getPoints;
		@GodotName("get_portal_active") GodotMethod!(bool) getPortalActive;
		@GodotName("get_portal_margin") GodotMethod!(double) getPortalMargin;
		@GodotName("get_use_default_margin") GodotMethod!(bool) getUseDefaultMargin;
		@GodotName("is_two_way") GodotMethod!(bool) isTwoWay;
		@GodotName("set_linked_room") GodotMethod!(void, NodePath) setLinkedRoom;
		@GodotName("set_point") GodotMethod!(void, long, Vector2) setPoint;
		@GodotName("set_points") GodotMethod!(void, PoolVector2Array) setPoints;
		@GodotName("set_portal_active") GodotMethod!(void, bool) setPortalActive;
		@GodotName("set_portal_margin") GodotMethod!(void, double) setPortalMargin;
		@GodotName("set_two_way") GodotMethod!(void, bool) setTwoWay;
		@GodotName("set_use_default_margin") GodotMethod!(void, bool) setUseDefaultMargin;
	}
	/// 
	pragma(inline, true) bool opEquals(in Portal other) const
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
	/// Construct a new instance of Portal.
	/// Note: use `memnew!Portal` instead.
	static Portal _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Portal");
		if(constructor is null) return typeof(this).init;
		return cast(Portal)(constructor());
	}
	/**
	
	*/
	NodePath getLinkedRoom() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getLinkedRoom, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getPoints, _godot_object);
	}
	/**
	
	*/
	bool getPortalActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getPortalActive, _godot_object);
	}
	/**
	
	*/
	double getPortalMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPortalMargin, _godot_object);
	}
	/**
	
	*/
	bool getUseDefaultMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseDefaultMargin, _godot_object);
	}
	/**
	
	*/
	bool isTwoWay() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isTwoWay, _godot_object);
	}
	/**
	
	*/
	void setLinkedRoom(NodePathArg0)(in NodePathArg0 p_room)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLinkedRoom, _godot_object, p_room);
	}
	/**
	
	*/
	void setPoint(in long index, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPoint, _godot_object, index, position);
	}
	/**
	
	*/
	void setPoints(in PoolVector2Array points)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPoints, _godot_object, points);
	}
	/**
	
	*/
	void setPortalActive(in bool p_active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPortalActive, _godot_object, p_active);
	}
	/**
	
	*/
	void setPortalMargin(in double p_margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPortalMargin, _godot_object, p_margin);
	}
	/**
	
	*/
	void setTwoWay(in bool p_two_way)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTwoWay, _godot_object, p_two_way);
	}
	/**
	
	*/
	void setUseDefaultMargin(in bool p_use)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseDefaultMargin, _godot_object, p_use);
	}
	/**
	
	*/
	@property NodePath linkedRoom()
	{
		return getLinkedRoom();
	}
	/// ditto
	@property void linkedRoom(NodePath v)
	{
		setLinkedRoom(v);
	}
	/**
	
	*/
	@property PoolVector2Array points()
	{
		return getPoints();
	}
	/// ditto
	@property void points(PoolVector2Array v)
	{
		setPoints(v);
	}
	/**
	
	*/
	@property bool portalActive()
	{
		return getPortalActive();
	}
	/// ditto
	@property void portalActive(bool v)
	{
		setPortalActive(v);
	}
	/**
	
	*/
	@property double portalMargin()
	{
		return getPortalMargin();
	}
	/// ditto
	@property void portalMargin(double v)
	{
		setPortalMargin(v);
	}
	/**
	
	*/
	@property bool twoWay()
	{
		return isTwoWay();
	}
	/// ditto
	@property void twoWay(bool v)
	{
		setTwoWay(v);
	}
	/**
	
	*/
	@property bool useDefaultMargin()
	{
		return getUseDefaultMargin();
	}
	/// ditto
	@property void useDefaultMargin(bool v)
	{
		setUseDefaultMargin(v);
	}
}
