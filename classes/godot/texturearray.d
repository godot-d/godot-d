/**
Array of textures stored in a single primitive.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.texturearray;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.texturelayered;
/**
Array of textures stored in a single primitive.

$(D TextureArray)s store an array of $(D Image)s in a single $(D Texture) primitive. Each layer of the texture array has its own mipmap chain. This makes it is a good alternative to texture atlases.
$(D TextureArray)s must be displayed using shaders. After importing your file as a $(D TextureArray) and setting the appropriate Horizontal and Vertical Slices, display it by setting it as a uniform to a shader, for example:


shader_type canvas_item;

uniform sampler2DArray tex;
uniform int index;

void fragment() {
    COLOR = texture(tex, vec3(UV.x, UV.y, float(index)));
}


Set the integer uniform "index" to show a particular part of the texture as defined by the Horizontal and Vertical Slices in the importer.
*/
@GodotBaseClass struct TextureArray
{
	package(godot) enum string _GODOT_internal_name = "TextureArray";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ TextureLayered _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in TextureArray other) const
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
	/// Construct a new instance of TextureArray.
	/// Note: use `memnew!TextureArray` instead.
	static TextureArray _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TextureArray");
		if(constructor is null) return typeof(this).init;
		return cast(TextureArray)(constructor());
	}
	@disable new(size_t s);
}
