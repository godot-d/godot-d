/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.webrtcdatachannelgdnative;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.webrtcdatachannel;
import godot.packetpeer;
import godot.reference;
/**

*/
@GodotBaseClass struct WebRTCDataChannelGDNative
{
	package(godot) enum string _GODOT_internal_name = "WebRTCDataChannelGDNative";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ WebRTCDataChannel _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in WebRTCDataChannelGDNative other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) WebRTCDataChannelGDNative opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of WebRTCDataChannelGDNative.
	/// Note: use `memnew!WebRTCDataChannelGDNative` instead.
	static WebRTCDataChannelGDNative _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebRTCDataChannelGDNative");
		if(constructor is null) return typeof(this).init;
		return cast(WebRTCDataChannelGDNative)(constructor());
	}
	@disable new(size_t s);
}