/**
A Texture capable of storing many smaller Textures with offsets.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.largetexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.texture;
/**
A Texture capable of storing many smaller Textures with offsets.

You can dynamically add pieces($(D Texture)) to this `LargeTexture` using different offsets.
*/
@GodotBaseClass struct LargeTexture
{
	static immutable string _GODOT_internal_name = "LargeTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in LargeTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	LargeTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static LargeTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("LargeTexture");
		if(constructor is null) return typeof(this).init;
		return cast(LargeTexture)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(long, Vector2, Texture) _GODOT_add_piece;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_piece") = _GODOT_add_piece;
	/**
	Add another $(D Texture) to this `LargeTexture`, starting on offset "ofs".
	*/
	long addPiece(in Vector2 ofs, Texture texture)
	{
		_GODOT_add_piece.bind("LargeTexture", "add_piece");
		return ptrcall!(long)(_GODOT_add_piece, _godot_object, ofs, texture);
	}
	package(godot) static GodotMethod!(void, long, Vector2) _GODOT_set_piece_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_piece_offset") = _GODOT_set_piece_offset;
	/**
	Sets the offset of the piece with index "idx" to "ofs".
	*/
	void setPieceOffset(in long idx, in Vector2 ofs)
	{
		_GODOT_set_piece_offset.bind("LargeTexture", "set_piece_offset");
		ptrcall!(void)(_GODOT_set_piece_offset, _godot_object, idx, ofs);
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_set_piece_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_piece_texture") = _GODOT_set_piece_texture;
	/**
	Sets the $(D Texture) of the piece with index "idx" to  "ofs".
	*/
	void setPieceTexture(in long idx, Texture texture)
	{
		_GODOT_set_piece_texture.bind("LargeTexture", "set_piece_texture");
		ptrcall!(void)(_GODOT_set_piece_texture, _godot_object, idx, texture);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_size") = _GODOT_set_size;
	/**
	Sets the size of this `LargeTexture`.
	*/
	void setSize(in Vector2 size)
	{
		_GODOT_set_size.bind("LargeTexture", "set_size");
		ptrcall!(void)(_GODOT_set_size, _godot_object, size);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clears the `LargeTexture`.
	*/
	void clear()
	{
		_GODOT_clear.bind("LargeTexture", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_piece_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_piece_count") = _GODOT_get_piece_count;
	/**
	Returns the number of pieces currently in this `LargeTexture`.
	*/
	long getPieceCount() const
	{
		_GODOT_get_piece_count.bind("LargeTexture", "get_piece_count");
		return ptrcall!(long)(_GODOT_get_piece_count, _godot_object);
	}
	package(godot) static GodotMethod!(Vector2, long) _GODOT_get_piece_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_piece_offset") = _GODOT_get_piece_offset;
	/**
	Returns the offset of the piece with index "idx".
	*/
	Vector2 getPieceOffset(in long idx) const
	{
		_GODOT_get_piece_offset.bind("LargeTexture", "get_piece_offset");
		return ptrcall!(Vector2)(_GODOT_get_piece_offset, _godot_object, idx);
	}
	package(godot) static GodotMethod!(Texture, long) _GODOT_get_piece_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_piece_texture") = _GODOT_get_piece_texture;
	/**
	Returns the $(D Texture) of the piece with index "idx".
	*/
	Ref!Texture getPieceTexture(in long idx) const
	{
		_GODOT_get_piece_texture.bind("LargeTexture", "get_piece_texture");
		return ptrcall!(Texture)(_GODOT_get_piece_texture, _godot_object, idx);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_data") = _GODOT__set_data;
	/**
	
	*/
	void _setData(in Array data)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_data") = _GODOT__get_data;
	/**
	
	*/
	Array _getData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	@property Array _data()
	{
		return _getData();
	}
	/// ditto
	@property void _data(Array v)
	{
		_setData(v);
	}
}
