module godot.d.reference;

import std.meta, std.traits, std.typecons;
import std.algorithm : swap;

import godot.core, godot.c;
import godot.reference, godot.object;
import godot.d.meta, godot.d.script;

/// Ref-counted container for Reference types
struct Ref(T) if(extends!(T, Reference))
{
	static assert(!is(T == const), "Ref cannot contain a const Reference");
	@nogc nothrow:
	
	static if(isGodotBaseClass!T)
	{
		package(godot) T _reference;
		alias _self = _reference;
	}
	else
	{
		package(godot) T _self;
		pragma(inline, true)
		package(godot) GodotClass!T _reference()
		{
			return (_self) ? _self.owner : GodotClass!T.init;
		}
	}
	
	/++
	Returns the reference without allowing it to escape the calling scope.
	
	TODO: dip1000
	+/
	T refPayload() const
	{
		return cast()_self;
	}
	alias refPayload this;
	
	ref Ref opAssign(T other)
	{
		if(_self.getGodotObject == other.getGodotObject) return this;
		unref();
		_self = other;
		if(_self) _reference.reference();
		return this;
	}
	ref Ref opAssign(R)(ref R other) if(is(R : Ref!U, U) && extends!(T, U))
	{
		opAssign(other._self);
		return this;
	}
	ref Ref opAssign(R)(R other) if(is(R : Ref!U, U) && extends!(T, U))
	{
		swap(_self, other);
		return this;
	}
	
	void unref()
	{
		if(_self && _reference.unreference())
		{
			_godot_api.godot_object_destroy(_reference._godot_object);
		}
		_self = T.init;
	}
	
	pragma(inline, true)
	bool opEquals(R)(in auto ref R other) const
	{
		return _self.getGDNativeObject!T == other.getGDNativeObject!T;
	}
	
	pragma(inline, true)
	bool isValid() const { return _self.getGodotObject != GodotClass!T.init; }
	alias opCast(T : bool) = isValid;
	pragma(inline, true)
	bool isNull() const { return _self.getGodotObject == GodotClass!T.init; }
	
	this(this)
	{
		if(_self) _reference.reference();
	}
	
	/++
	Construct from other reference
	+/
	this(T other)
	{
		_self = other;
		if(_self) _reference.reference();
	}
	this(R)(ref R other) if(is(R : Ref!U, U) && extends!(T, U))
	{
		_self = other._self;
		if(_self) _reference.reference();
	}
	this(R)(R other) if(is(R : Ref!U, U) && extends!(T, U))
	{
		swap(_self, other);
	}
	
	~this()
	{
		unref();
	}
}

/++
Create a Ref from a pointer without incrementing refcount.
+/
package(godot) RefOrT!T refOrT(T)(T instance)
{
	static if(extends!(T, Reference))
	{
		Ref!T ret = void;
		ret._self = instance;
		return ret;
	}
	else return instance;
}

/++
Create a Ref from a pointer and increment refcount.
+/
package(godot) RefOrT!T refOrTInc(T)(T instance)
{
	static if(extends!(T, Reference))
	{
		Ref!T ret = void;
		ret._self = instance;
		if(ret._self) ret._reference.reference();
		return ret;
	}
	else return instance;
}


