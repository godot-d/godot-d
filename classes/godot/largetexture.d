/**
$(I Deprecated.) A $(D Texture) capable of storing many smaller textures with offsets.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.largetexture;
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
import godot.texture;
/**
$(I Deprecated.) A $(D Texture) capable of storing many smaller textures with offsets.

$(I Deprecated (will be removed in Godot 4.0).) A $(D Texture) capable of storing many smaller textures with offsets.
You can dynamically add pieces ($(D Texture)s) to this $(D LargeTexture) using different offsets.
*/
@GodotBaseClass struct LargeTexture
{
	package(godot) enum string _GODOT_internal_name = "LargeTexture";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_data") GodotMethod!(Array) _getData;
		@GodotName("_set_data") GodotMethod!(void, Array) _setData;
		@GodotName("add_piece") GodotMethod!(long, Vector2, Texture) addPiece;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_piece_count") GodotMethod!(long) getPieceCount;
		@GodotName("get_piece_offset") GodotMethod!(Vector2, long) getPieceOffset;
		@GodotName("get_piece_texture") GodotMethod!(Texture, long) getPieceTexture;
		@GodotName("set_piece_offset") GodotMethod!(void, long, Vector2) setPieceOffset;
		@GodotName("set_piece_texture") GodotMethod!(void, long, Texture) setPieceTexture;
		@GodotName("set_size") GodotMethod!(void, Vector2) setSize;
	}
	/// 
	pragma(inline, true) bool opEquals(in LargeTexture other) const
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
	/// Construct a new instance of LargeTexture.
	/// Note: use `memnew!LargeTexture` instead.
	static LargeTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("LargeTexture");
		if(constructor is null) return typeof(this).init;
		return cast(LargeTexture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Array _getData() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setData(in Array data)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds `texture` to this $(D LargeTexture), starting on offset `ofs`.
	*/
	long addPiece(in Vector2 ofs, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.addPiece, _godot_object, ofs, texture);
	}
	/**
	Clears the $(D LargeTexture).
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	Returns the number of pieces currently in this $(D LargeTexture).
	*/
	long getPieceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getPieceCount, _godot_object);
	}
	/**
	Returns the offset of the piece with the index `idx`.
	*/
	Vector2 getPieceOffset(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPieceOffset, _godot_object, idx);
	}
	/**
	Returns the $(D Texture) of the piece with the index `idx`.
	*/
	Ref!Texture getPieceTexture(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getPieceTexture, _godot_object, idx);
	}
	/**
	Sets the offset of the piece with the index `idx` to `ofs`.
	*/
	void setPieceOffset(in long idx, in Vector2 ofs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPieceOffset, _godot_object, idx, ofs);
	}
	/**
	Sets the $(D Texture) of the piece with index `idx` to `texture`.
	*/
	void setPieceTexture(in long idx, Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPieceTexture, _godot_object, idx, texture);
	}
	/**
	Sets the size of this $(D LargeTexture).
	*/
	void setSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSize, _godot_object, size);
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
