/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.roommanager;
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
@GodotBaseClass struct RoomManager
{
	package(godot) enum string _GODOT_internal_name = "RoomManager";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_debug_sprawl") GodotMethod!(bool) getDebugSprawl;
		@GodotName("get_default_portal_margin") GodotMethod!(double) getDefaultPortalMargin;
		@GodotName("get_gameplay_monitor_enabled") GodotMethod!(bool) getGameplayMonitorEnabled;
		@GodotName("get_merge_meshes") GodotMethod!(bool) getMergeMeshes;
		@GodotName("get_overlap_warning_threshold") GodotMethod!(long) getOverlapWarningThreshold;
		@GodotName("get_portal_depth_limit") GodotMethod!(long) getPortalDepthLimit;
		@GodotName("get_preview_camera_path") GodotMethod!(NodePath) getPreviewCameraPath;
		@GodotName("get_pvs_mode") GodotMethod!(RoomManager.PVSMode) getPvsMode;
		@GodotName("get_roaming_expansion_margin") GodotMethod!(double) getRoamingExpansionMargin;
		@GodotName("get_room_simplify") GodotMethod!(double) getRoomSimplify;
		@GodotName("get_roomlist_path") GodotMethod!(NodePath) getRoomlistPath;
		@GodotName("get_show_margins") GodotMethod!(bool) getShowMargins;
		@GodotName("get_use_secondary_pvs") GodotMethod!(bool) getUseSecondaryPvs;
		@GodotName("rooms_clear") GodotMethod!(void) roomsClear;
		@GodotName("rooms_convert") GodotMethod!(void) roomsConvert;
		@GodotName("rooms_get_active") GodotMethod!(bool) roomsGetActive;
		@GodotName("rooms_set_active") GodotMethod!(void, bool) roomsSetActive;
		@GodotName("set_debug_sprawl") GodotMethod!(void, bool) setDebugSprawl;
		@GodotName("set_default_portal_margin") GodotMethod!(void, double) setDefaultPortalMargin;
		@GodotName("set_gameplay_monitor_enabled") GodotMethod!(void, bool) setGameplayMonitorEnabled;
		@GodotName("set_merge_meshes") GodotMethod!(void, bool) setMergeMeshes;
		@GodotName("set_overlap_warning_threshold") GodotMethod!(void, long) setOverlapWarningThreshold;
		@GodotName("set_portal_depth_limit") GodotMethod!(void, long) setPortalDepthLimit;
		@GodotName("set_preview_camera_path") GodotMethod!(void, NodePath) setPreviewCameraPath;
		@GodotName("set_pvs_mode") GodotMethod!(void, long) setPvsMode;
		@GodotName("set_roaming_expansion_margin") GodotMethod!(void, double) setRoamingExpansionMargin;
		@GodotName("set_room_simplify") GodotMethod!(void, double) setRoomSimplify;
		@GodotName("set_roomlist_path") GodotMethod!(void, NodePath) setRoomlistPath;
		@GodotName("set_show_margins") GodotMethod!(void, bool) setShowMargins;
		@GodotName("set_use_secondary_pvs") GodotMethod!(void, bool) setUseSecondaryPvs;
	}
	/// 
	pragma(inline, true) bool opEquals(in RoomManager other) const
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
	/// Construct a new instance of RoomManager.
	/// Note: use `memnew!RoomManager` instead.
	static RoomManager _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RoomManager");
		if(constructor is null) return typeof(this).init;
		return cast(RoomManager)(constructor());
	}
	/// 
	enum PVSMode : int
	{
		/** */
		pvsModeDisabled = 0,
		/** */
		pvsModePartial = 1,
		/** */
		pvsModeFull = 2,
	}
	/// 
	enum Constants : int
	{
		pvsModeDisabled = 0,
		pvsModePartial = 1,
		pvsModeFull = 2,
	}
	/**
	
	*/
	bool getDebugSprawl() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getDebugSprawl, _godot_object);
	}
	/**
	
	*/
	double getDefaultPortalMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDefaultPortalMargin, _godot_object);
	}
	/**
	
	*/
	bool getGameplayMonitorEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getGameplayMonitorEnabled, _godot_object);
	}
	/**
	
	*/
	bool getMergeMeshes() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getMergeMeshes, _godot_object);
	}
	/**
	
	*/
	long getOverlapWarningThreshold() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOverlapWarningThreshold, _godot_object);
	}
	/**
	
	*/
	long getPortalDepthLimit() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPortalDepthLimit, _godot_object);
	}
	/**
	
	*/
	NodePath getPreviewCameraPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getPreviewCameraPath, _godot_object);
	}
	/**
	
	*/
	RoomManager.PVSMode getPvsMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RoomManager.PVSMode)(GDNativeClassBinding.getPvsMode, _godot_object);
	}
	/**
	
	*/
	double getRoamingExpansionMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRoamingExpansionMargin, _godot_object);
	}
	/**
	
	*/
	double getRoomSimplify() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRoomSimplify, _godot_object);
	}
	/**
	
	*/
	NodePath getRoomlistPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getRoomlistPath, _godot_object);
	}
	/**
	
	*/
	bool getShowMargins() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getShowMargins, _godot_object);
	}
	/**
	
	*/
	bool getUseSecondaryPvs() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getUseSecondaryPvs, _godot_object);
	}
	/**
	
	*/
	void roomsClear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.roomsClear, _godot_object);
	}
	/**
	
	*/
	void roomsConvert()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.roomsConvert, _godot_object);
	}
	/**
	
	*/
	bool roomsGetActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.roomsGetActive, _godot_object);
	}
	/**
	
	*/
	void roomsSetActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.roomsSetActive, _godot_object, active);
	}
	/**
	
	*/
	void setDebugSprawl(in bool debug_sprawl)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDebugSprawl, _godot_object, debug_sprawl);
	}
	/**
	
	*/
	void setDefaultPortalMargin(in double default_portal_margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultPortalMargin, _godot_object, default_portal_margin);
	}
	/**
	
	*/
	void setGameplayMonitorEnabled(in bool gameplay_monitor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGameplayMonitorEnabled, _godot_object, gameplay_monitor);
	}
	/**
	
	*/
	void setMergeMeshes(in bool merge_meshes)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMergeMeshes, _godot_object, merge_meshes);
	}
	/**
	
	*/
	void setOverlapWarningThreshold(in long overlap_warning_threshold)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOverlapWarningThreshold, _godot_object, overlap_warning_threshold);
	}
	/**
	
	*/
	void setPortalDepthLimit(in long portal_depth_limit)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPortalDepthLimit, _godot_object, portal_depth_limit);
	}
	/**
	
	*/
	void setPreviewCameraPath(NodePathArg0)(in NodePathArg0 preview_camera)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPreviewCameraPath, _godot_object, preview_camera);
	}
	/**
	
	*/
	void setPvsMode(in long pvs_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPvsMode, _godot_object, pvs_mode);
	}
	/**
	
	*/
	void setRoamingExpansionMargin(in double roaming_expansion_margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRoamingExpansionMargin, _godot_object, roaming_expansion_margin);
	}
	/**
	
	*/
	void setRoomSimplify(in double room_simplify)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRoomSimplify, _godot_object, room_simplify);
	}
	/**
	
	*/
	void setRoomlistPath(NodePathArg0)(in NodePathArg0 p_path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRoomlistPath, _godot_object, p_path);
	}
	/**
	
	*/
	void setShowMargins(in bool show_margins)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShowMargins, _godot_object, show_margins);
	}
	/**
	
	*/
	void setUseSecondaryPvs(in bool use_secondary_pvs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseSecondaryPvs, _godot_object, use_secondary_pvs);
	}
	/**
	
	*/
	@property bool active()
	{
		return roomsGetActive();
	}
	/// ditto
	@property void active(bool v)
	{
		roomsSetActive(v);
	}
	/**
	
	*/
	@property bool debugSprawl()
	{
		return getDebugSprawl();
	}
	/// ditto
	@property void debugSprawl(bool v)
	{
		setDebugSprawl(v);
	}
	/**
	
	*/
	@property double defaultPortalMargin()
	{
		return getDefaultPortalMargin();
	}
	/// ditto
	@property void defaultPortalMargin(double v)
	{
		setDefaultPortalMargin(v);
	}
	/**
	
	*/
	@property bool gameplayMonitor()
	{
		return getGameplayMonitorEnabled();
	}
	/// ditto
	@property void gameplayMonitor(bool v)
	{
		setGameplayMonitorEnabled(v);
	}
	/**
	
	*/
	@property bool mergeMeshes()
	{
		return getMergeMeshes();
	}
	/// ditto
	@property void mergeMeshes(bool v)
	{
		setMergeMeshes(v);
	}
	/**
	
	*/
	@property long overlapWarningThreshold()
	{
		return getOverlapWarningThreshold();
	}
	/// ditto
	@property void overlapWarningThreshold(long v)
	{
		setOverlapWarningThreshold(v);
	}
	/**
	
	*/
	@property long portalDepthLimit()
	{
		return getPortalDepthLimit();
	}
	/// ditto
	@property void portalDepthLimit(long v)
	{
		setPortalDepthLimit(v);
	}
	/**
	
	*/
	@property NodePath previewCamera()
	{
		return getPreviewCameraPath();
	}
	/// ditto
	@property void previewCamera(NodePath v)
	{
		setPreviewCameraPath(v);
	}
	/**
	
	*/
	@property RoomManager.PVSMode pvsMode()
	{
		return getPvsMode();
	}
	/// ditto
	@property void pvsMode(long v)
	{
		setPvsMode(v);
	}
	/**
	
	*/
	@property double roamingExpansionMargin()
	{
		return getRoamingExpansionMargin();
	}
	/// ditto
	@property void roamingExpansionMargin(double v)
	{
		setRoamingExpansionMargin(v);
	}
	/**
	
	*/
	@property double roomSimplify()
	{
		return getRoomSimplify();
	}
	/// ditto
	@property void roomSimplify(double v)
	{
		setRoomSimplify(v);
	}
	/**
	
	*/
	@property NodePath roomlist()
	{
		return getRoomlistPath();
	}
	/// ditto
	@property void roomlist(NodePath v)
	{
		setRoomlistPath(v);
	}
	/**
	
	*/
	@property bool showMargins()
	{
		return getShowMargins();
	}
	/// ditto
	@property void showMargins(bool v)
	{
		setShowMargins(v);
	}
	/**
	
	*/
	@property bool useSecondaryPvs()
	{
		return getUseSecondaryPvs();
	}
	/// ditto
	@property void useSecondaryPvs(bool v)
	{
		setUseSecondaryPvs(v);
	}
}
