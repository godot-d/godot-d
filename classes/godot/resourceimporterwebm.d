/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourceimporterwebm;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resourceimporter;
/**

*/
@GodotBaseClass struct ResourceImporterWebm
{
	static immutable string _GODOT_internal_name = "ResourceImporterWebm";
public:
@nogc nothrow:
	union { godot_object _godot_object; ResourceImporter _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ResourceImporterWebm other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ResourceImporterWebm opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ResourceImporterWebm _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ResourceImporterWebm");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceImporterWebm)(constructor());
	}
	@disable new(size_t s);
}
