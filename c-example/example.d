import godot.c;

import core.runtime;
import std.stdio;

extern(C):

export void godot_native_init(godot_native_init_options* options)
{
	Runtime.initialize();
	
	auto icf = godot_instance_create_func(&instance_func, null, null);
	auto idf = godot_instance_destroy_func(&destroy_func, null, null);
	
	godot_script_register_class("Test", "Node", icf, idf);
	
	
	auto method_attributes = godot_method_attributes(godot_method_rpc_mode.GODOT_METHOD_RPC_MODE_DISABLED);
	auto method_data = godot_instance_method (&notification, cast(void*)0xDEADBEEF, null);
	
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
	godot_variant v;
	godot_variant_new_nil(&v);
	
	// prints 0xdeadbeef
	writeln("godot-d example: notification");
	writefln("%x", user_data);
	
	return v;
}


void* instance_func(godot_object instance, void* methoddata)
{
	return null;
}

void destroy_func(godot_object instance, void* methoddata, void* user_data)
{
	
}



