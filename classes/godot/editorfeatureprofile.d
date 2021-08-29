/**
An editor feature profile which can be used to disable specific features.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorfeatureprofile;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.reference;
/**
An editor feature profile which can be used to disable specific features.

An editor feature profile can be used to disable specific features of the Godot editor. When disabled, the features won't appear in the editor, which makes the editor less cluttered. This is useful in education settings to reduce confusion or when working in a team. For example, artists and level designers could use a feature profile that disables the script editor to avoid accidentally making changes to files they aren't supposed to edit.
To manage editor feature profiles visually, use $(B Editor &gt; Manage Feature Profiles...) at the top of the editor window.
*/
@GodotBaseClass struct EditorFeatureProfile
{
	package(godot) enum string _GODOT_internal_name = "EditorFeatureProfile";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
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
	/// 
	pragma(inline, true) bool opEquals(in EditorFeatureProfile other) const
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
	/// Construct a new instance of EditorFeatureProfile.
	/// Note: use `memnew!EditorFeatureProfile` instead.
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
		The 3D editor. If this feature is disabled, the 3D editor won't display but 3D nodes will still display in the Create New Node dialog.
		*/
		feature3d = 0,
		/**
		The Script tab, which contains the script editor and class reference browser. If this feature is disabled, the Script tab won't display.
		*/
		featureScript = 1,
		/**
		The AssetLib tab. If this feature is disabled, the AssetLib tab won't display.
		*/
		featureAssetLib = 2,
		/**
		Scene tree editing. If this feature is disabled, the Scene tree dock will still be visible but will be read-only.
		*/
		featureSceneTree = 3,
		/**
		The Node dock. If this feature is disabled, signals and groups won't be visible and modifiable from the editor.
		*/
		featureNodeDock = 4,
		/**
		The FileSystem dock. If this feature is disabled, the FileSystem dock won't be visible.
		*/
		featureFilesystemDock = 5,
		/**
		The Import dock. If this feature is disabled, the Import dock won't be visible.
		*/
		featureImportDock = 6,
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
		featureNodeDock = 4,
		featureFilesystemDock = 5,
		featureImportDock = 6,
		featureMax = 7,
	}
	/**
	Returns the specified `feature`'s human-readable name.
	*/
	String getFeatureName(in long feature)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getFeatureName, _godot_object, feature);
	}
	/**
	Returns `true` if the class specified by `class_name` is disabled. When disabled, the class won't appear in the Create New Node dialog.
	*/
	bool isClassDisabled(in String class_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isClassDisabled, _godot_object, class_name);
	}
	/**
	Returns `true` if editing for the class specified by `class_name` is disabled. When disabled, the class will still appear in the Create New Node dialog but the inspector will be read-only when selecting a node that extends the class.
	*/
	bool isClassEditorDisabled(in String class_name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isClassEditorDisabled, _godot_object, class_name);
	}
	/**
	Returns `true` if `property` is disabled in the class specified by `class_name`. When a property is disabled, it won't appear in the inspector when selecting a node that extends the class specified by `class_name`.
	*/
	bool isClassPropertyDisabled(in String class_name, in String property) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isClassPropertyDisabled, _godot_object, class_name, property);
	}
	/**
	Returns `true` if the `feature` is disabled. When a feature is disabled, it will disappear from the editor entirely.
	*/
	bool isFeatureDisabled(in long feature) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFeatureDisabled, _godot_object, feature);
	}
	/**
	Loads an editor feature profile from a file. The file must follow the JSON format obtained by using the feature profile manager's $(B Export) button or the $(D saveToFile) method.
	*/
	GodotError loadFromFile(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.loadFromFile, _godot_object, path);
	}
	/**
	Saves the editor feature profile to a file in JSON format. It can then be imported using the feature profile manager's $(B Import) button or the $(D loadFromFile) button.
	*/
	GodotError saveToFile(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.saveToFile, _godot_object, path);
	}
	/**
	If `disable` is `true`, disables the class specified by `class_name`. When disabled, the class won't appear in the Create New Node dialog.
	*/
	void setDisableClass(in String class_name, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisableClass, _godot_object, class_name, disable);
	}
	/**
	If `disable` is `true`, disables editing for the class specified by `class_name`. When disabled, the class will still appear in the Create New Node dialog but the inspector will be read-only when selecting a node that extends the class.
	*/
	void setDisableClassEditor(in String class_name, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisableClassEditor, _godot_object, class_name, disable);
	}
	/**
	If `disable` is `true`, disables editing for `property` in the class specified by `class_name`. When a property is disabled, it won't appear in the inspector when selecting a node that extends the class specified by `class_name`.
	*/
	void setDisableClassProperty(in String class_name, in String property, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisableClassProperty, _godot_object, class_name, property, disable);
	}
	/**
	If `disable` is `true`, disables the editor feature specified in `feature`. When a feature is disabled, it will disappear from the editor entirely.
	*/
	void setDisableFeature(in long feature, in bool disable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisableFeature, _godot_object, feature, disable);
	}
}
