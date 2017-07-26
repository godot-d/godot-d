/++
Compile-time introspection of Godot types
+/
module godot.d.meta;

import godot.d.udas;

import std.meta, std.traits;

import godot.core, godot.c;

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
Get the Godot class of T (the class of the `owner` for D native scripts)
+/
template GodotClass(T)
{
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
godot_object getGodotObject(T)(T t) if(isGodotClass!T)
{
	static if(isGodotBaseClass!T) return t._godot_object;
	static if(extendsGodotBaseClass!T)
	{
		return (t) ? t.owner._godot_object : godot_object.init;
	}
}

package(godot) enum string dName(alias a) = __traits(identifier, a);
package(godot) template godotName(alias a)
{
	alias udas = getUDAs!(a, Rename);
	static if(udas.length == 0) enum string godotName = __traits(identifier, a);
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

