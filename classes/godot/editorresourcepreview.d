/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorresourcepreview;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.node;
import godot.texture;
import godot.editorresourcepreviewgenerator;
import godot.resource;
/**

*/
@GodotBaseClass struct EditorResourcePreview
{
	package(godot) enum string _GODOT_internal_name = "EditorResourcePreview";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_preview_ready") GodotMethod!(void, String, Texture, Texture, long, String, Variant) _previewReady;
		@GodotName("add_preview_generator") GodotMethod!(void, EditorResourcePreviewGenerator) addPreviewGenerator;
		@GodotName("check_for_invalidation") GodotMethod!(void, String) checkForInvalidation;
		@GodotName("queue_edited_resource_preview") GodotMethod!(void, Resource, GodotObject, String, Variant) queueEditedResourcePreview;
		@GodotName("queue_resource_preview") GodotMethod!(void, String, GodotObject, String, Variant) queueResourcePreview;
		@GodotName("remove_preview_generator") GodotMethod!(void, EditorResourcePreviewGenerator) removePreviewGenerator;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorResourcePreview other) const
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
	/// Construct a new instance of EditorResourcePreview.
	/// Note: use `memnew!EditorResourcePreview` instead.
	static EditorResourcePreview _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorResourcePreview");
		if(constructor is null) return typeof(this).init;
		return cast(EditorResourcePreview)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _previewReady(VariantArg5)(in String arg0, Texture arg1, Texture arg2, in long arg3, in String arg4, in VariantArg5 arg5)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		_GODOT_args.append(arg1);
		_GODOT_args.append(arg2);
		_GODOT_args.append(arg3);
		_GODOT_args.append(arg4);
		_GODOT_args.append(arg5);
		String _GODOT_method_name = String("_preview_ready");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void addPreviewGenerator(EditorResourcePreviewGenerator generator)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addPreviewGenerator, _godot_object, generator);
	}
	/**
	
	*/
	void checkForInvalidation(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.checkForInvalidation, _godot_object, path);
	}
	/**
	
	*/
	void queueEditedResourcePreview(VariantArg3)(Resource resource, GodotObject receiver, in String receiver_func, in VariantArg3 userdata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.queueEditedResourcePreview, _godot_object, resource, receiver, receiver_func, userdata);
	}
	/**
	
	*/
	void queueResourcePreview(VariantArg3)(in String path, GodotObject receiver, in String receiver_func, in VariantArg3 userdata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.queueResourcePreview, _godot_object, path, receiver, receiver_func, userdata);
	}
	/**
	
	*/
	void removePreviewGenerator(EditorResourcePreviewGenerator generator)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removePreviewGenerator, _godot_object, generator);
	}
}
