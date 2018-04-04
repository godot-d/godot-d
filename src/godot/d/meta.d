/++
Compile-time introspection of Godot types
+/
module godot.d.meta;

import godot.d.string;
import godot.d.udas;
import godot.d.reference;

import std.meta, std.traits;

import godot.core, godot.c;
import godot.object;

@nogc nothrow:

/++
Adds the Ref wrapper to T, if T is a Reference type
+/
template RefOrT(T)
{
	import godot.reference;
	static if(isGodotClass!T && extends!(T, Reference)) alias RefOrT = Ref!T;
	else alias RefOrT = T;
}

/++
Removes the Ref wrapper from R, if present
+/
template NonRef(R)
{
	static if(is(R : Ref!T, T)) alias NonRef = T;
	else alias NonRef = R;
}

/++
A UDA with which base Godot classes are marked. NOT used by new D classes.
+/
package(godot) enum GodotBaseClass;

/++
Determine if T is a class originally from the Godot Engine (but *not* a new D
class registered to Godot).
+/
template isGodotBaseClass(T)
{
	static if(is(T == struct)) enum bool isGodotBaseClass =
		hasUDA!(T, GodotBaseClass);
	else enum bool isGodotBaseClass = false;
}

/++
Determine if T is a D native script (extends a Godot base class).
+/
template extendsGodotBaseClass(T)
{
	static if(is(T == class) && hasMember!(T, "owner"))
	{
		enum bool extendsGodotBaseClass = isGodotBaseClass!(typeof(T.owner));
	}
	else enum bool extendsGodotBaseClass = false;
}

/++
A list of all of T's base classes, both script and C++, ending with GodotObject.

Has the same purpose as std.traits.BaseClassesTuple, but accounts for Godot's
script inheritance system.
+/
template GodotBaseClasses(T)
{
	static if(isGodotBaseClass!T) alias GodotBaseClasses = T.BaseClasses;
	else static if(extendsGodotBaseClass!T)
	{
		import std.traits : BaseClassesTuple;
		// the last two D base classes are GodotScript!<Base> and Object.
		alias GodotBaseClasses = AliasSeq!(BaseClassesTuple!(Unqual!T)[0..$-2],
			GodotClass!T, GodotClass!T.BaseClasses);
	}
}

/++
Checks whether R is a subtype of ParentR by Godot's script inheritance system.
Both D script and C++ classes are accounted for.
If R and ParentR are the same, `extends` is true as well.
+/
template extends(R, ParentR)
{
	alias T = NonRef!R;
	alias Parent = NonRef!ParentR;
	static if(is(Unqual!T : Unqual!Parent)) enum bool extends = true;
	else enum bool extends = staticIndexOf!(Unqual!Parent, GodotBaseClasses!T) != -1;
}

/++
Get the Godot class of R (the class of the `owner` for D native scripts)
+/
template GodotClass(R)
{
	alias T = NonRef!R;
	static if(isGodotBaseClass!T) alias GodotClass = T;
	else static if(extendsGodotBaseClass!T) alias GodotClass = typeof(T.owner);
}

/++
Determine if T is any Godot class (base C++ class or D native script, but NOT
a godot.core struct)
+/
enum bool isGodotClass(T) = extendsGodotBaseClass!T || isGodotBaseClass!T;

/++
Get the C++ Godot Object pointer of either a Godot Object OR a D native script.

Useful for generic code.
+/
GodotClass!T getGodotObject(T)(in T t) if(isGodotClass!T)
{
	GodotClass!T ret;
	ret._godot_object = t.getGDNativeObject;
	return ret;
}
GodotClass!(NonRef!R) getGodotObject(R)(auto ref R r) if(is(R : Ref!U, U)) { return r._reference; }

package(godot) godot_object getGDNativeObject(T)(in T t) if(isGodotClass!T)
{
	static if(isGodotBaseClass!T) return cast(godot_object)t._godot_object;
	static if(extendsGodotBaseClass!T)
	{
		return (t) ? cast(godot_object)t.owner._godot_object : godot_object.init;
	}
}
package(godot) godot_object getGDNativeObject(R)(auto ref R r) if(is(R : Ref!U, U)) { return r._reference._godot_object; }

/++
Alias to default-constructed T, as an expression.

A few Godot core types can't use D's `init` because they need to call a C++
constructor through GDNative.
+/
template godotDefaultInit(T)
{
	static if(is(T : Array)) alias godotDefaultInit = Alias!(T.empty_array);
	else static if(is(T : Dictionary)) alias godotDefaultInit = Alias!(
		Dictionary.empty_dictionary);
	else alias godotDefaultInit = Alias!(T.init);
}

package(godot) enum string dName(alias a) = __traits(identifier, a);
package(godot) template godotName(alias a)
{
	alias udas = getUDAs!(a, Rename);
	static if(udas.length == 0)
	{
		version(GodotNoAutomaticNamingConvention) enum string godotName = __traits(identifier, a);
		else enum string godotName = __traits(identifier, a).camelToSnake;
	}
	else
	{
		static assert(udas.length == 1, "Multiple Rename UDAs on "~
			fullyQualifiedName!a~"? Why?");
		
		static if(is( udas[0] )) static assert(0, "Construct the UDA with a string: @Rename(\"name\")");
		else
		{
			enum Rename uda = udas[0];
			enum string godotName = uda.name;
		}
	}
}

