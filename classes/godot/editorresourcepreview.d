/**
Helper to generate previews of resources or files.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorresourcepreview;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.node;
import godot.texture;
import godot.editorresourcepreviewgenerator;
import godot.resource;
/**
Helper to generate previews of resources or files.

This object is used to generate previews for resources of files.
*/
@GodotBaseClass struct EditorResourcePreview
{
	enum string _GODOT_internal_name = "EditorResourcePreview";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_preview_ready") GodotMethod!(void, String, Texture, Texture, long, String, Variant) _previewReady;
		@GodotName("add_preview_generator") GodotMethod!(void, EditorResourcePreviewGenerator) addPreviewGenerator;
		@GodotName("check_for_invalidation") GodotMethod!(void, String) checkForInvalidation;
		@GodotName("queue_edited_resource_preview") GodotMethod!(void, Resource, GodotObject, String, Variant) queueEditedResourcePreview;
		@GodotName("queue_resource_preview") GodotMethod!(void, String, GodotObject, String, Variant) queueResourcePreview;
		@GodotName("remove_preview_generator") GodotMethod!(void, EditorResourcePreviewGenerator) removePreviewGenerator;
	}
	bool opEquals(in EditorResourcePreview other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorResourcePreview opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	Create an own, custom preview generator.
	*/
	void addPreviewGenerator(EditorResourcePreviewGenerator generator)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addPreviewGenerator, _godot_object, generator);
	}
	/**
	Check if the resource changed, if so, it will be invalidated and the corresponding signal emitted.
	*/
	void checkForInvalidation(in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.checkForInvalidation, _godot_object, path);
	}
	/**
	Queue a resource being edited for preview (using an instance). Once the preview is ready, your receiver.receiver_func will be called either containing the preview texture or an empty texture (if no preview was possible). Callback must have the format: (path,texture,userdata). Userdata can be anything.
	*/
	void queueEditedResourcePreview(VariantArg3)(Resource resource, GodotObject receiver, in String receiver_func, in VariantArg3 userdata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.queueEditedResourcePreview, _godot_object, resource, receiver, receiver_func, userdata);
	}
	/**
	Queue a resource file for preview (using a path). Once the preview is ready, your receiver.receiver_func will be called either containing the preview texture or an empty texture (if no preview was possible). Callback must have the format: (path,texture,userdata). Userdata can be anything.
	*/
	void queueResourcePreview(VariantArg3)(in String path, GodotObject receiver, in String receiver_func, in VariantArg3 userdata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.queueResourcePreview, _godot_object, path, receiver, receiver_func, userdata);
	}
	/**
	Removes a custom preview generator.
	*/
	void removePreviewGenerator(EditorResourcePreviewGenerator generator)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removePreviewGenerator, _godot_object, generator);
	}
}
