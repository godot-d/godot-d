/**
Unix IP support. See $(D IP).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.ip_unix;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.ip;
/**
Unix IP support. See $(D IP).

Unix-specific implementation of IP support functions. See $(D IP).
*/
@GodotBaseClass struct IP_Unix
{
	static immutable string _GODOT_internal_name = "IP_Unix";
public:
@nogc nothrow:
	union { godot_object _godot_object; IPSingleton _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in IP_Unix other) const { return _godot_object.ptr is other._godot_object.ptr; }
	IP_Unix opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static IP_Unix _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("IP_Unix");
		if(constructor is null) return typeof(this).init;
		return cast(IP_Unix)(constructor());
	}
	@disable new(size_t s);
}
