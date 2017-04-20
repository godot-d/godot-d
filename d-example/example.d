import godot.c;

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

extern(C):

export void godot_native_init(godot_native_init_options* options)
{
	Runtime.initialize();
	import core.memory;
	GC.disable();
	
	auto icf = godot_instance_create_func(&instance_func, null, null);
	auto idf = godot_instance_destroy_func(&destroy_func, null, null);
	
	godot_script_register_class("Test", "Node", icf, idf);
	
	
	auto method_attributes = godot_method_attributes(godot_method_rpc_mode.GODOT_METHOD_RPC_MODE_DISABLED);
	auto method_data = godot_instance_method (&notification, null, null);
	
	godot_script_register_method("Test", "_notification", method_attributes,
		method_data);
}

export void godot_native_terminate(godot_native_terminate_options *options)
{
	import core.memory;
	GC.enable();
	Runtime.terminate();
}

godot_variant notification(godot_object instance, void* user_data,
	void* method_data, int num_args, godot_variant** args)
{
	
	godot_variant v;
	godot_variant_new_nil(&v);
	
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
	
	return v;
}


void* instance_func(godot_object instance, void* methoddata)
{
	return null;
}

void destroy_func(godot_object instance, void* methoddata, void* user_data)
{
	
}



