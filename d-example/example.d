import godot.c;

import godot;
import godot.core.defs;
import godot.core.string;
import godot.core.variant;
import godot.core.vector2;
import godot.core.array;

import core.runtime;
import std.stdio;
import std.conv;
import std.string : toStringz;
import core.stdc.string;
import std.algorithm.iteration;



class Test
{
	@GodotMethod
	void writeStuff()
	{
		writeln("Writing stuff...");
	}
	
	@GodotMethod
	String formatNumbers(real_t r, long i)
	{
		import std.format, std.string;
		auto res = format("real r = %f\n int i = %d\n", r, i);
		String ret = String(res);
		return ret;
	}
	
	@GodotMethod
	void _notification(int type)
	{
		/++
		
		Currently, this is a collection of tests checking that the types and
		methods work as intended.
		
		Once D class registration is finished, it'll be replaced with a proper
		example game.
		
		+/
		
		// Avoid spamming the tests - only run on NOTIFICATION_READY (#13)
		if(type != 13) return;
		
		Variant vVec2Ctor = Variant(Vector2(21, 6));
		writefln("vVec2Ctor.type: %s", vVec2Ctor.type);
		assert(vVec2Ctor.type == Variant.Type.vector2);
		Vector2 vec2Back = vVec2Ctor.as!Vector2;
		writefln("vec2Back: %f,%f", vec2Back.x, vec2Back.y);
		
		{
			godot_string str;
			godot_string_new_data(&str, "asdf", 4);
			
			godot_variant var;
			godot_variant_new_string(&var, &str);
			writef("Made var from str; type: %s\n", godot_variant_get_type(&var));
			
			godot_string strBack = godot_variant_as_string(&var);
			writef("Got strBack from var\n");
			
			const(char*) cStr = godot_string_c_str(&strBack);
			printf("strBack c_str: <%s>\n", cStr);
			
			godot_string_destroy(&strBack);
			writef("strBack destroyed\n");
		}
		
		String str = String("qwertz");
		Variant vStr = str;
		String strBack = vStr.as!String;
		auto strBackC = strBack.c_string;
		printf("strBack.c_string: <%s>\n", strBackC);
		
		
		Variant vLongCtor = Variant(1L);
		writefln("vLongCtor.type: %s", vLongCtor.type);
		assert(vLongCtor.type == Variant.Type.int_);
		auto vLongBack = vLongCtor.as!long;
		writefln("vLongCtor.as!long: %d", vLongBack);
		assert(vLongBack == 1L);
		
		Variant vUbyteCtor = Variant(ubyte(250));
		writefln("vUbyteCtor.type: %s", vUbyteCtor.type);
		assert(vUbyteCtor.type == Variant.Type.int_);
		long vUbyteBackL = vUbyteCtor.as!long;
		writefln("vUbyteCtor.as!long: %d", vUbyteBackL);
		assert(vUbyteBackL == 250L);
		ubyte vUbyteBack = vUbyteCtor.as!ubyte;
		writefln("vUbyteCtor.as!ubyte: %d", vUbyteBack);
		assert(vUbyteBack == ubyte(250));
		
		Variant vAssigned = -33;
		writefln("vAssigned.type: %s", vAssigned.type);
		assert(vAssigned.type == Variant.Type.int_);
		auto vAssignedBack = vAssigned.as!int;
		writefln("vAssignedBack.as!int: %d", vAssignedBack);
		assert(vAssignedBack == -33);
		
		Array arr = Array.empty_array;
		arr ~= vVec2Ctor;
		arr ~= vStr;
		arr ~= vLongCtor;
		arr ~= vUbyteCtor;
		arr ~= vAssigned;
		writefln("arr.length: %d", arr.length);
		assert(arr.length == 5);
		write("Types:");
		foreach(i; 0..arr.length)
		{
			writef(" <%s>", arr[i].type);
		}
		writeln();
	}
}




extern(C):

export void godot_native_init(godot_native_init_options* options)
{
	Runtime.initialize();
	
	register!Test();
}

export void godot_native_terminate(godot_native_terminate_options *options)
{
	Runtime.terminate();
}




