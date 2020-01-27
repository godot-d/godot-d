/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorfeatureprofile;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
/**

*/
@GodotBaseClass struct EditorFeatureProfile
{
	enum string _GODOT_internal_name = "EditorFeatureProfile";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_feature_name") GodotMethod!(String, long) getFeatureName;
		@GodotName("is_class_disabled") GodotMethod!(bool, String) isClassDisabled;
		@GodotName("is_class_editor_disabled") GodotMethod!(bool, String) isClassEditorDisabled;
		@GodotName("is_class_property_disabled") GodotMethod!(bool, String, String) isClassPropertyDisabled;
		@GodotName("is_feature_disabled") GodotMethod!(bool, long) isFeatureDisabled;
		@GodotName("load_from_file") GodotMethod!(GodotError, String) loadFromFile;
		@GodotName("save_to_file") GodotMethod!(GodotError, String) saveToFile;
		@GodotName("set_disable_class") GodotMethod!(void, String, bool) setDisableClass;
		@GodotName("set_disable_class_editor") GodotMethod!(void, String, bool) setDisableClassEditor;
		@GodotName("set_disable_class_property") GodotMethod!(void, String, String, bool) setDisableClassProperty;
		@GodotName("set_disable_feature") GodotMethod!(void, long, bool) setDisableFeature;
	}
	bool opEquals(in EditorFeatureProfile other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorFeatureProfile opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorFeatureProfile _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorFeatureProfile");
		if(constructor is null) return typeof(this).init;
		return cast(EditorFeatureProfile)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Feature : int
	{
		/**
		
		*/
		feature3d = 0,
		/**
		
		*/
		featureScript = 1,
		/**
		
		*/
		featureAssetLib = 2,
		/**
		
		*/
		featureSceneTree = 3,
		/**
		
		*/
		featureImportDock = 4,
		/**
		
		*/
		featureNodeDock = 5,
		/**
		
		*/
		featureFilesystemDock = 6,
		/**
		Represents the size of the $(D feature) enum.
		*/
		featureMax = 7,
	}
	/// 
	enum Constants : int
	{
		feature3d = 0,
		featureScript = 1,
		featureAssetLib = 2,
		featureSceneTree = 3,
		featureImportDock = 4,
		featureNodeDock = 5,
		featureFilesystemDock = 6,
		featureMax = 7,
	}
	/**
	
	*/
	String getFeatureName(in long feature)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getFeatureName, _godot_object, feature);
	}
	/**
	
	*/
	bool isClassDisabled(in String class_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClassDisabled, _godot_object, class_name);
	}
	/**
	
	*/
	bool isClassEditorDisabled(in String class_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClassEditorDisabled, _godot_object, class_name);
	}
	/**
	
	*/
	bool isClassPropertyDisabled(in String class_name, in String property) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isClassPropertyDisabled, _godot_object, class_name, property);
	}
	/**
	
	*/
	bool isFeatureDisabled(in long feature) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFeatureDisabled, _godot_object, feature);
	}
	/**
	
	*/
	GodotError loadFromFile(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.loadFromFile, _godot_object, path);
	}
	/**
	
	*/
	GodotError saveToFile(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.saveToFile, _godot_object, path);
	}
	/**
	
	*/
	void setDisableClass(in String class_name, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisableClass, _godot_object, class_name, disable);
	}
	/**
	
	*/
	void setDisableClassEditor(in String class_name, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisableClassEditor, _godot_object, class_name, disable);
	}
	/**
	
	*/
	void setDisableClassProperty(in String class_name, in String property, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisableClassProperty, _godot_object, class_name, property, disable);
	}
	/**
	
	*/
	void setDisableFeature(in long feature, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisableFeature, _godot_object, feature, disable);
	}
}
