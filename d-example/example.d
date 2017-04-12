import godot.c;

import godot.core.string;

import core.runtime;
import std.stdio;

import core.stdc.string;

extern(C):

export void godot_native_init(godot_native_init_options* options)
{
	Runtime.initialize();
	
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
	Runtime.terminate();
}

godot_variant notification(godot_object instance, void* user_data,
	void* method_data, int num_args, godot_variant** args)
{
	import std.exception;
	
	godot_variant v;
	godot_variant_new_nil(&v);
	
	static immutable char* cString = "String from char*";
	auto cs = String(cast(const(char*))cString);
	writefln("char*->String lengths: %d->%d", strlen(cString), cs.length);
	assert(strlen(cString) == cs.length);
	
	
	static immutable string dString = "String from D string";
	auto ds = String(dString);
	writefln("string->String lengths: %d->%d", dString.length, ds.length);
	assert(dString.length == ds.length);
	
	auto dsCopy = ds.dup;
	writefln("duplicated string opCmp: %d", dsCopy.opCmp(ds));
	assert(ds == dsCopy);
	
	auto doubled = ds~dsCopy;
	writefln("doubled length: %d", doubled.length);
	assert(doubled.length == dString.length*2);
	auto backToC = doubled.c_string;
	writefln("backToC length: %d", strlen(backToC));
	assert(strlen(backToC) == dString.length*2);
	assert(backToC[0..dString.length*2] == dString~dString);
	doubled ~= ds;
	assert(doubled.length == dString.length*3);
	
	return v;
}


void* instance_func(godot_object instance, void* methoddata)
{
	return null;
}

void destroy_func(godot_object instance, void* methoddata, void* user_data)
{
	
}



