/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.light;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.visualinstance;
/**

*/
@GodotBaseClass struct Light
{
	package(godot) enum string _GODOT_internal_name = "Light";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_bake_mode") GodotMethod!(Light.BakeMode) getBakeMode;
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("get_cull_mask") GodotMethod!(long) getCullMask;
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("get_shadow_color") GodotMethod!(Color) getShadowColor;
		@GodotName("get_shadow_reverse_cull_face") GodotMethod!(bool) getShadowReverseCullFace;
		@GodotName("has_shadow") GodotMethod!(bool) hasShadow;
		@GodotName("is_editor_only") GodotMethod!(bool) isEditorOnly;
		@GodotName("is_negative") GodotMethod!(bool) isNegative;
		@GodotName("set_bake_mode") GodotMethod!(void, long) setBakeMode;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("set_cull_mask") GodotMethod!(void, long) setCullMask;
		@GodotName("set_editor_only") GodotMethod!(void, bool) setEditorOnly;
		@GodotName("set_negative") GodotMethod!(void, bool) setNegative;
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
		@GodotName("set_shadow") GodotMethod!(void, bool) setShadow;
		@GodotName("set_shadow_color") GodotMethod!(void, Color) setShadowColor;
		@GodotName("set_shadow_reverse_cull_face") GodotMethod!(void, bool) setShadowReverseCullFace;
	}
	/// 
	pragma(inline, true) bool opEquals(in Light other) const
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
	/// Construct a new instance of Light.
	/// Note: use `memnew!Light` instead.
	static Light _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Light");
		if(constructor is null) return typeof(this).init;
		return cast(Light)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum BakeMode : int
	{
		/** */
		bakeDisabled = 0,
		/** */
		bakeIndirect = 1,
		/** */
		bakeAll = 2,
	}
	/// 
	enum Param : int
	{
		/** */
		paramEnergy = 0,
		/** */
		paramIndirectEnergy = 1,
		/** */
		paramSize = 2,
		/** */
		paramSpecular = 3,
		/** */
		paramRange = 4,
		/** */
		paramAttenuation = 5,
		/** */
		paramSpotAngle = 6,
		/** */
		paramSpotAttenuation = 7,
		/** */
		paramContactShadowSize = 8,
		/** */
		paramShadowMaxDistance = 9,
		/** */
		paramShadowSplit1Offset = 10,
		/** */
		paramShadowSplit2Offset = 11,
		/** */
		paramShadowSplit3Offset = 12,
		/** */
		paramShadowNormalBias = 13,
		/** */
		paramShadowBias = 14,
		/** */
		paramShadowBiasSplitScale = 15,
		/** */
		paramMax = 16,
	}
	/// 
	enum Constants : int
	{
		paramEnergy = 0,
		bakeDisabled = 0,
		paramIndirectEnergy = 1,
		bakeIndirect = 1,
		paramSize = 2,
		bakeAll = 2,
		paramSpecular = 3,
		paramRange = 4,
		paramAttenuation = 5,
		paramSpotAngle = 6,
		paramSpotAttenuation = 7,
		paramContactShadowSize = 8,
		paramShadowMaxDistance = 9,
		paramShadowSplit1Offset = 10,
		paramShadowSplit2Offset = 11,
		paramShadowSplit3Offset = 12,
		paramShadowNormalBias = 13,
		paramShadowBias = 14,
		paramShadowBiasSplitScale = 15,
		paramMax = 16,
	}
	/**
	
	*/
	Light.BakeMode getBakeMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Light.BakeMode)(GDNativeClassBinding.getBakeMode, _godot_object);
	}
	/**
	
	*/
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object);
	}
	/**
	
	*/
	long getCullMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCullMask, _godot_object);
	}
	/**
	
	*/
	double getParam(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getParam, _godot_object, param);
	}
	/**
	
	*/
	Color getShadowColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getShadowColor, _godot_object);
	}
	/**
	
	*/
	bool getShadowReverseCullFace() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getShadowReverseCullFace, _godot_object);
	}
	/**
	
	*/
	bool hasShadow() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasShadow, _godot_object);
	}
	/**
	
	*/
	bool isEditorOnly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEditorOnly, _godot_object);
	}
	/**
	
	*/
	bool isNegative() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isNegative, _godot_object);
	}
	/**
	
	*/
	void setBakeMode(in long bake_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBakeMode, _godot_object, bake_mode);
	}
	/**
	
	*/
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	void setCullMask(in long cull_mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCullMask, _godot_object, cull_mask);
	}
	/**
	
	*/
	void setEditorOnly(in bool editor_only)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setEditorOnly, _godot_object, editor_only);
	}
	/**
	
	*/
	void setNegative(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNegative, _godot_object, enabled);
	}
	/**
	
	*/
	void setParam(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParam, _godot_object, param, value);
	}
	/**
	
	*/
	void setShadow(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShadow, _godot_object, enabled);
	}
	/**
	
	*/
	void setShadowColor(in Color shadow_color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShadowColor, _godot_object, shadow_color);
	}
	/**
	
	*/
	void setShadowReverseCullFace(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShadowReverseCullFace, _godot_object, enable);
	}
	/**
	
	*/
	@property bool editorOnly()
	{
		return isEditorOnly();
	}
	/// ditto
	@property void editorOnly(bool v)
	{
		setEditorOnly(v);
	}
	/**
	
	*/
	@property Light.BakeMode lightBakeMode()
	{
		return getBakeMode();
	}
	/// ditto
	@property void lightBakeMode(long v)
	{
		setBakeMode(v);
	}
	/**
	
	*/
	@property Color lightColor()
	{
		return getColor();
	}
	/// ditto
	@property void lightColor(Color v)
	{
		setColor(v);
	}
	/**
	
	*/
	@property long lightCullMask()
	{
		return getCullMask();
	}
	/// ditto
	@property void lightCullMask(long v)
	{
		setCullMask(v);
	}
	/**
	
	*/
	@property double lightEnergy()
	{
		return getParam(0);
	}
	/// ditto
	@property void lightEnergy(double v)
	{
		setParam(0, v);
	}
	/**
	
	*/
	@property double lightIndirectEnergy()
	{
		return getParam(1);
	}
	/// ditto
	@property void lightIndirectEnergy(double v)
	{
		setParam(1, v);
	}
	/**
	
	*/
	@property bool lightNegative()
	{
		return isNegative();
	}
	/// ditto
	@property void lightNegative(bool v)
	{
		setNegative(v);
	}
	/**
	
	*/
	@property double lightSize()
	{
		return getParam(2);
	}
	/// ditto
	@property void lightSize(double v)
	{
		setParam(2, v);
	}
	/**
	
	*/
	@property double lightSpecular()
	{
		return getParam(3);
	}
	/// ditto
	@property void lightSpecular(double v)
	{
		setParam(3, v);
	}
	/**
	
	*/
	@property double shadowBias()
	{
		return getParam(14);
	}
	/// ditto
	@property void shadowBias(double v)
	{
		setParam(14, v);
	}
	/**
	
	*/
	@property Color shadowColor()
	{
		return getShadowColor();
	}
	/// ditto
	@property void shadowColor(Color v)
	{
		setShadowColor(v);
	}
	/**
	
	*/
	@property double shadowContact()
	{
		return getParam(8);
	}
	/// ditto
	@property void shadowContact(double v)
	{
		setParam(8, v);
	}
	/**
	
	*/
	@property bool shadowEnabled()
	{
		return hasShadow();
	}
	/// ditto
	@property void shadowEnabled(bool v)
	{
		setShadow(v);
	}
	/**
	
	*/
	@property bool shadowReverseCullFace()
	{
		return getShadowReverseCullFace();
	}
	/// ditto
	@property void shadowReverseCullFace(bool v)
	{
		setShadowReverseCullFace(v);
	}
}
