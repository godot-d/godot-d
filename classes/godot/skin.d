/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.skin;
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

*/
@GodotBaseClass struct Skin
{
	enum string _GODOT_internal_name = "Skin";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_bind") GodotMethod!(void, long, Transform) addBind;
		@GodotName("clear_binds") GodotMethod!(void) clearBinds;
		@GodotName("get_bind_bone") GodotMethod!(long, long) getBindBone;
		@GodotName("get_bind_count") GodotMethod!(long) getBindCount;
		@GodotName("get_bind_pose") GodotMethod!(Transform, long) getBindPose;
		@GodotName("set_bind_bone") GodotMethod!(void, long, long) setBindBone;
		@GodotName("set_bind_count") GodotMethod!(void, long) setBindCount;
		@GodotName("set_bind_pose") GodotMethod!(void, long, Transform) setBindPose;
	}
	bool opEquals(in Skin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Skin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Skin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Skin");
		if(constructor is null) return typeof(this).init;
		return cast(Skin)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void addBind(in long bone, in Transform pose)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addBind, _godot_object, bone, pose);
	}
	/**
	
	*/
	void clearBinds()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearBinds, _godot_object);
	}
	/**
	
	*/
	long getBindBone(in long bind_index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBindBone, _godot_object, bind_index);
	}
	/**
	
	*/
	long getBindCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBindCount, _godot_object);
	}
	/**
	
	*/
	Transform getBindPose(in long bind_index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getBindPose, _godot_object, bind_index);
	}
	/**
	
	*/
	void setBindBone(in long bind_index, in long bone)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBindBone, _godot_object, bind_index, bone);
	}
	/**
	
	*/
	void setBindCount(in long bind_count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBindCount, _godot_object, bind_count);
	}
	/**
	
	*/
	void setBindPose(in long bind_index, in Transform pose)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBindPose, _godot_object, bind_index, pose);
	}
}
