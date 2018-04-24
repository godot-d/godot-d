/++
Integration with Godot editor's output and debugger tabs
+/
module godot.d.output;

import godot.c, godot.core;

/++
The release-mode Godot-D assert handler redirects assert messages to the Godot
error handlers and terminates the program.
+/
nothrow
void godotAssertHandlerCrash(string file, size_t line, string msg)
{
	import core.exception;
	import std.experimental.allocator.mallocator;
	
	char[] buffer = cast(char[])Mallocator.instance.allocate(file.length + msg.length + 2);
	scope(exit) Mallocator.instance.deallocate(cast(void[])buffer);
	
	buffer[0..file.length] = file[];
	buffer[file.length] = '\0';
	buffer[file.length+1 .. $-1] = msg[];
	buffer[$-1] = '\0';
	
	_godot_api.godot_print_error(&buffer.ptr[file.length+1], "", buffer.ptr, cast(int)line);
	
	throw new AssertError(msg, file, line);
}

/++
The debug-mode Godot-D assert handler redirects assert messages to the Godot
error handlers (including Debugger tab in editor and system console).

Unlike the default D assert handler, this one doesn't terminate the program,
allowing the messages to remain in Godot's Debugger tab and matching how Godot
error macros behave.
+/
nothrow
void godotAssertHandlerEditorDebug(string file, size_t line, string msg)
{
	import core.exception;
	import std.experimental.allocator.mallocator;
	
	char[] buffer = cast(char[])Mallocator.instance.allocate(file.length + msg.length + 2);
	scope(exit) Mallocator.instance.deallocate(cast(void[])buffer);
	
	buffer[0..file.length] = file[];
	buffer[file.length] = '\0';
	buffer[file.length+1 .. $-1] = msg[];
	buffer[$-1] = '\0';
	
	_godot_api.godot_print_error(&buffer.ptr[file.length+1], "", buffer.ptr, cast(int)line);
	
	version(assert) // any `assert(x)` gets compiled; usually a debug version
	{
		// TODO: if in Editor Debugger, debug_break like GDScript asserts
	}
	else // only `assert(0)`/`assert(false)` get compiled; usually a release version
	{
		// crash on always-false asserts
		throw new AssertError(msg, file, line);
	}
}

/**
Print to Godot's console and stdout.

Params:
	args = any Godot-compatible types or strings
*/
void print(Args...)(Args args)
{
	import godot.core.string, godot.core.variant;
	
	String str;
	static if(Args.length == 0) str = String(" ");
	foreach(arg; args)
	{
		static if(is(typeof(arg) : String)) str ~= arg;
		else static if(is(typeof(arg) : string)) str ~= String(arg);
		else static if(Variant.compatibleToGodot!(typeof(arg))) str ~= Variant(arg).as!String;
		else static assert(0, "Unable to print type "~typeof(arg).stringof);
	}
	_godot_api.godot_print(&str._godot_string);
}

