/++
String manipulation utilities needed by Godot-D
+/
module godot.d.string;

import std.string, std.uni, std.utf;
import std.range, std.traits;

T snakeToCamel(T)(in T inputStr) if(isSomeString!T)
{
	Unqual!T str = inputStr;
	alias Char = Unqual!(ElementEncodingType!T);
	Char[] ret = [];

	bool newWord = false;
	while(!str.empty)
	{
		dchar c = str.decodeFront;
		if(c == '_')
		{
			if(ret.empty) ret.encode('_');
			else newWord = true;
		}
		else
		{
			if(newWord)
			{
				ret.encode(c.toUpper);
				newWord = false;
			}
			else ret.encode(c.toLower);
		}
	}
	return ret;
}

static assert("snake_case".snakeToCamel == "snakeCase");
static assert("_physics_process".snakeToCamel == "_physicsProcess", "_physics_process".snakeToCamel);
static assert("CONSTANT_CASE".snakeToCamel == "constantCase");

