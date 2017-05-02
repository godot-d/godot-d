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

class Test // notice that Test does not inherit Label
{
	import godot.classes.label;
	mixin extends!Label;
	
	this()
	{
		writefln("Test.this(); this: %x", cast(void*)this);
	}
	
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
		// NOTIFICATION_READY (#13)
		if(type == 13)
		{
			writeln("Test recieved NOTIFICATION_READY (#13)");
			writeln();
			writeln("Hello Godot o/  - D's writeln function");
			writeln();
			
			{
				writefln("This (%s) is a normal D method of type %s.",
					__FUNCTION__, typeof(_notification).stringof);
			}
			
			{
				import std.compiler;
				writefln("This D library was compiled with %s compiler, v%d.%03d",
					name, version_major, version_minor);
			}
			
			writeln(" ---TEST--- ");
			test();
		}
	}
	
	@GodotMethod
	void test()
	{
		/++
		
		Currently, this is a collection of tests checking that the types and
		methods work as intended.
		
		Once D class registration is finished, it'll be replaced with a proper
		example game.
		
		+/
		
		Variant vVec2Ctor = Variant(Vector2(21, 6));
		writefln("vVec2Ctor.type: %s", vVec2Ctor.type);
		assert(vVec2Ctor.type == Variant.Type.vector2);
		Vector2 vec2Back = vVec2Ctor.as!Vector2;
		writefln("vec2Back: %f,%f", vec2Back.x, vec2Back.y);
		
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
		
		// test singletons
		{
			import godot.classes.os;
			import std.string;
			
			String name = OS.get_name();
			writefln("OS is %s on device %s", name.c_string().fromStringz,
				OS.get_model_name().c_string().fromStringz);
			String exe = OS.get_executable_path();
			printf("Executable path: <%s>\n", exe.c_string);
		}
		
		// test extension of Label
		{
			import std.string;
			
			// Test has no "set_uppercase" or "set/get_text", so they're forwarded to base
			
			set_uppercase(true);
			
			String oldText = get_text();
			writefln("Old Label text: %s", oldText.c_string.fromStringz);
			String newText = String("New text set from D Test class");
			set_text(newText);
		}
		
		// test resource loading
		{
			import godot.classes.resource, godot.classes.resourceloader;
			import std.string;
			
			String iconPath = String("res://icon.png");
			writefln("assert(!ResourceLoader.has(%s))", iconPath.c_string.fromStringz);
			assert(!ResourceLoader.has(iconPath));
			String hint = String("");
			
			Resource res = ResourceLoader.load(iconPath, hint, false);
			writefln("Loaded Resource %s at path %s", res.get_name.c_string.fromStringz,
				res.get_path.c_string.fromStringz);
			
			// test upcasts
			import godot.classes.texture, godot.classes.mesh;
			Mesh wrongCast = cast(Mesh)res;
			assert(wrongCast.ptr is null);
			Texture rightCast = cast(Texture)res;
			assert(rightCast.ptr !is null);
			auto size = rightCast.get_size();
			writefln("Texture size: %f,%f", size.x, size.y);
			
			writefln("assert(ResourceLoader.has(%s))", iconPath.c_string.fromStringz);
			assert(ResourceLoader.has(iconPath));
		}
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




