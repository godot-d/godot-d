/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gltfnode;
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
/**

*/
@GodotBaseClass struct GLTFNode
{
	package(godot) enum string _GODOT_internal_name = "GLTFNode";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_camera") GodotMethod!(long) getCamera;
		@GodotName("get_children") GodotMethod!(PoolIntArray) getChildren;
		@GodotName("get_height") GodotMethod!(long) getHeight;
		@GodotName("get_joint") GodotMethod!(bool) getJoint;
		@GodotName("get_light") GodotMethod!(long) getLight;
		@GodotName("get_mesh") GodotMethod!(long) getMesh;
		@GodotName("get_parent") GodotMethod!(long) getParent;
		@GodotName("get_rotation") GodotMethod!(Quat) getRotation;
		@GodotName("get_scale") GodotMethod!(Vector3) getScale;
		@GodotName("get_skeleton") GodotMethod!(long) getSkeleton;
		@GodotName("get_skin") GodotMethod!(long) getSkin;
		@GodotName("get_translation") GodotMethod!(Vector3) getTranslation;
		@GodotName("get_xform") GodotMethod!(Transform) getXform;
		@GodotName("set_camera") GodotMethod!(void, long) setCamera;
		@GodotName("set_children") GodotMethod!(void, PoolIntArray) setChildren;
		@GodotName("set_height") GodotMethod!(void, long) setHeight;
		@GodotName("set_joint") GodotMethod!(void, bool) setJoint;
		@GodotName("set_light") GodotMethod!(void, long) setLight;
		@GodotName("set_mesh") GodotMethod!(void, long) setMesh;
		@GodotName("set_parent") GodotMethod!(void, long) setParent;
		@GodotName("set_rotation") GodotMethod!(void, Quat) setRotation;
		@GodotName("set_scale") GodotMethod!(void, Vector3) setScale;
		@GodotName("set_skeleton") GodotMethod!(void, long) setSkeleton;
		@GodotName("set_skin") GodotMethod!(void, long) setSkin;
		@GodotName("set_translation") GodotMethod!(void, Vector3) setTranslation;
		@GodotName("set_xform") GodotMethod!(void, Transform) setXform;
	}
	/// 
	pragma(inline, true) bool opEquals(in GLTFNode other) const
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
	/// Construct a new instance of GLTFNode.
	/// Note: use `memnew!GLTFNode` instead.
	static GLTFNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GLTFNode");
		if(constructor is null) return typeof(this).init;
		return cast(GLTFNode)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getCamera()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCamera, _godot_object);
	}
	/**
	
	*/
	PoolIntArray getChildren()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.getChildren, _godot_object);
	}
	/**
	
	*/
	long getHeight()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getHeight, _godot_object);
	}
	/**
	
	*/
	bool getJoint()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getJoint, _godot_object);
	}
	/**
	
	*/
	long getLight()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getLight, _godot_object);
	}
	/**
	
	*/
	long getMesh()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	long getParent()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getParent, _godot_object);
	}
	/**
	
	*/
	Quat getRotation()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Quat)(GDNativeClassBinding.getRotation, _godot_object);
	}
	/**
	
	*/
	Vector3 getScale()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getScale, _godot_object);
	}
	/**
	
	*/
	long getSkeleton()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSkeleton, _godot_object);
	}
	/**
	
	*/
	long getSkin()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSkin, _godot_object);
	}
	/**
	
	*/
	Vector3 getTranslation()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getTranslation, _godot_object);
	}
	/**
	
	*/
	Transform getXform()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.getXform, _godot_object);
	}
	/**
	
	*/
	void setCamera(in long camera)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCamera, _godot_object, camera);
	}
	/**
	
	*/
	void setChildren(in PoolIntArray children)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setChildren, _godot_object, children);
	}
	/**
	
	*/
	void setHeight(in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHeight, _godot_object, height);
	}
	/**
	
	*/
	void setJoint(in bool joint)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setJoint, _godot_object, joint);
	}
	/**
	
	*/
	void setLight(in long light)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLight, _godot_object, light);
	}
	/**
	
	*/
	void setMesh(in long mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMesh, _godot_object, mesh);
	}
	/**
	
	*/
	void setParent(in long parent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParent, _godot_object, parent);
	}
	/**
	
	*/
	void setRotation(in Quat rotation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRotation, _godot_object, rotation);
	}
	/**
	
	*/
	void setScale(in Vector3 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScale, _godot_object, scale);
	}
	/**
	
	*/
	void setSkeleton(in long skeleton)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkeleton, _godot_object, skeleton);
	}
	/**
	
	*/
	void setSkin(in long skin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkin, _godot_object, skin);
	}
	/**
	
	*/
	void setTranslation(in Vector3 translation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTranslation, _godot_object, translation);
	}
	/**
	
	*/
	void setXform(in Transform xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setXform, _godot_object, xform);
	}
	/**
	
	*/
	@property long camera()
	{
		return getCamera();
	}
	/// ditto
	@property void camera(long v)
	{
		setCamera(v);
	}
	/**
	
	*/
	@property PoolIntArray children()
	{
		return getChildren();
	}
	/// ditto
	@property void children(PoolIntArray v)
	{
		setChildren(v);
	}
	/**
	
	*/
	@property long height()
	{
		return getHeight();
	}
	/// ditto
	@property void height(long v)
	{
		setHeight(v);
	}
	/**
	
	*/
	@property bool joint()
	{
		return getJoint();
	}
	/// ditto
	@property void joint(bool v)
	{
		setJoint(v);
	}
	/**
	
	*/
	@property long light()
	{
		return getLight();
	}
	/// ditto
	@property void light(long v)
	{
		setLight(v);
	}
	/**
	
	*/
	@property long mesh()
	{
		return getMesh();
	}
	/// ditto
	@property void mesh(long v)
	{
		setMesh(v);
	}
	/**
	
	*/
	@property long parent()
	{
		return getParent();
	}
	/// ditto
	@property void parent(long v)
	{
		setParent(v);
	}
	/**
	
	*/
	@property Quat rotation()
	{
		return getRotation();
	}
	/// ditto
	@property void rotation(Quat v)
	{
		setRotation(v);
	}
	/**
	
	*/
	@property Vector3 scale()
	{
		return getScale();
	}
	/// ditto
	@property void scale(Vector3 v)
	{
		setScale(v);
	}
	/**
	
	*/
	@property long skeleton()
	{
		return getSkeleton();
	}
	/// ditto
	@property void skeleton(long v)
	{
		setSkeleton(v);
	}
	/**
	
	*/
	@property long skin()
	{
		return getSkin();
	}
	/// ditto
	@property void skin(long v)
	{
		setSkin(v);
	}
	/**
	
	*/
	@property Vector3 translation()
	{
		return getTranslation();
	}
	/// ditto
	@property void translation(Vector3 v)
	{
		setTranslation(v);
	}
	/**
	
	*/
	@property Transform xform()
	{
		return getXform();
	}
	/// ditto
	@property void xform(Transform v)
	{
		setXform(v);
	}
}
