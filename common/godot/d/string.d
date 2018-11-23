/++
String manipulation utilities needed by Godot-D
+/
module godot.d.string;

import std.string, std.uni, std.utf;
import std.range, std.traits;

/++
Convert snake_case or CONSTANT_CASE to D-style camelCase.

Preserves leading underscore.
+/
nothrow
T snakeToCamel(T)(in T inputStr) if(isSomeString!T)
{
	Unqual!T str = inputStr;
	alias Char = Unqual!(ElementEncodingType!T);
	Char[] ret = [];

	bool newWord = false;
	while(!str.empty)
	{
		dchar c = str.decodeFront!(Yes.useReplacementDchar, Unqual!T);
		if(c == '_')
		{
			if(ret.empty) ret.encode!(Yes.useReplacementDchar)('_');
			else newWord = true;
		}
		else
		{
			if(newWord)
			{
				ret.encode!(Yes.useReplacementDchar)(c.toUpper);
				newWord = false;
			}
			else ret.encode!(Yes.useReplacementDchar)(c.toLower);
		}
	}
	return ret;
}

static assert("snake_case".snakeToCamel == "snakeCase");
static assert("_physics_process".snakeToCamel == "_physicsProcess", "_physics_process".snakeToCamel);
static assert("CONSTANT_CASE".snakeToCamel == "constantCase");

/++
Convert camelCase to Godot-style snake_case.

Preserves leading underscore.
+/
nothrow
T camelToSnake(T)(in T inputStr) if(isSomeString!T)
{
	Unqual!T str = inputStr;
	alias Char = Unqual!(ElementEncodingType!T);
	Char[] ret = [];

	bool inUppercaseWord = false;
	while(!str.empty)
	{
		dchar c = str.decodeFront!(Yes.useReplacementDchar);
		if(c.isUpper)
		{
			if(!ret.empty && !inUppercaseWord) ret.encode!(Yes.useReplacementDchar)('_');
			ret.encode!(Yes.useReplacementDchar)(c.toLower);
			inUppercaseWord = true;
		}
		else
		{
			ret.encode!(Yes.useReplacementDchar)(c);
			inUppercaseWord = false;
		}
	}
	return ret;
}

static assert("camelCase".camelToSnake == "camel_case");
static assert("_physicsProcess".camelToSnake == "_physics_process");
static assert("toUTF32".camelToSnake == "to_utf32");

