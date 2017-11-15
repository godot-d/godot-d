module godot.c.pluginscript;

import godot.c.core, godot.c.nativescript;

@nogc nothrow:
extern(C):

struct godot_pluginscript_instance_data {};
struct godot_pluginscript_script_data {};
struct godot_pluginscript_language_data {};

struct godot_pluginscript_instance_desc
{
	godot_pluginscript_instance_data *function(godot_pluginscript_script_data *p_data, godot_object p_owner) init;
	void function(godot_pluginscript_instance_data *p_data) finish;

	godot_bool function(godot_pluginscript_instance_data *p_data, const godot_string *p_name, const godot_variant *p_value) set_prop;
	godot_bool function(godot_pluginscript_instance_data *p_data, const godot_string *p_name, godot_variant *r_ret) get_prop;

	godot_variant function(godot_pluginscript_instance_data *p_data,
			const godot_string_name *p_method, const godot_variant **p_args,
			int p_argcount, godot_variant_call_error *r_error) call_method;

	void function(godot_pluginscript_instance_data *p_data, int p_notification) notification;
	// TODO: could this rpc mode stuff be moved to the godot_pluginscript_script_manifest ?
	godot_method_rpc_mode function(godot_pluginscript_instance_data *p_data, const godot_string *p_method) get_rpc_mode;
	godot_method_rpc_mode function(godot_pluginscript_instance_data *p_data, const godot_string *p_variable) get_rset_mode;

	//this is used by script languages that keep a reference counter of their own
	//you can make make Ref<> not die when it reaches zero, so deleting the reference
	//depends entirely from the script.
	// Note: You can set thoses function pointer to NULL if not needed.
	void function(godot_pluginscript_instance_data *p_data) refcount_incremented;
	bool function(godot_pluginscript_instance_data *p_data) refcount_decremented; // return true if it can die
}

struct godot_pluginscript_script_manifest
{
	godot_pluginscript_script_data *data;
	godot_string_name name;
	godot_bool is_tool;
	godot_string_name base;

	// Member lines format: {<string>: <int>}
	godot_dictionary member_lines;
	// Method info dictionary format
	// {
	//  name: <string>
	//  args: [<dict:property>]
	//  default_args: [<variant>]
	//  return: <dict:property>
	//  flags: <int>
	//  rpc_mode: <int:godot_method_rpc_mode>
	// }
	godot_array methods;
	// Same format than for methods
	godot_array signals;
	// Property info dictionary format
	// {
	//  name: <string>
	//  type: <int:godot_variant_type>
	//  hint: <int:godot_property_hint>
	//  hint_string: <string>
	//  usage: <int:godot_property_usage_flags>
	//  default_value: <variant>
	//  rset_mode: <int:godot_method_rpc_mode>
	// }
	godot_array properties;
}

struct godot_pluginscript_script_desc
{
	godot_pluginscript_script_manifest function(godot_pluginscript_language_data *p_data, const godot_string *p_path, const godot_string *p_source, godot_error *r_error) initialize;
	void function(godot_pluginscript_script_data *p_data) finish;
	godot_pluginscript_instance_desc instance_desc;
}

// --- Language ---

struct godot_pluginscript_profiling_data
{
	godot_string_name signature;
	godot_int call_count;
	godot_int total_time; // In microseconds
	godot_int self_time; // In microseconds
}

struct godot_pluginscript_language_desc
{
	const char *name;
	const char *type;
	const char *extension;
	const char **recognized_extensions; // NULL terminated array
	godot_pluginscript_language_data *function() initialize;
	void function(godot_pluginscript_language_data *p_data) finish;
	const char **reserved_words; // NULL terminated array
	const char **comment_delimiters; // NULL terminated array
	const char **string_delimiters; // NULL terminated array
	godot_bool has_named_classes;
	godot_bool supports_builtin_mode;

	godot_string function(godot_pluginscript_language_data *p_data, const godot_string *p_class_name, const godot_string *p_base_class_name) get_template_source_code;
	godot_bool function(godot_pluginscript_language_data *p_data, const godot_string *p_script, int *r_line_error, int *r_col_error, godot_string *r_test_error, const godot_string *p_path, godot_pool_string_array *r_functions) validate;
	int function(godot_pluginscript_language_data *p_data, const godot_string *p_function, const godot_string *p_code) find_function; // Can be NULL
	godot_string function(godot_pluginscript_language_data *p_data, const godot_string *p_class, const godot_string *p_name, const godot_pool_string_array *p_args) make_function;
	godot_error function(godot_pluginscript_language_data *p_data, const godot_string *p_code, const godot_string *p_base_path, godot_object p_owner, godot_array *r_options, godot_bool *r_force, godot_string *r_call_hint) complete_code;
	void function(godot_pluginscript_language_data *p_data, godot_string *p_code, int p_from_line, int p_to_line) auto_indent_code;

	void function(godot_pluginscript_language_data *p_data, const godot_string *p_variable, const godot_variant *p_value) add_global_constant;
	godot_string function(godot_pluginscript_language_data *p_data) debug_get_error;
	int function(godot_pluginscript_language_data *p_data) debug_get_stack_level_count;
	int function(godot_pluginscript_language_data *p_data, int p_level) debug_get_stack_level_line;
	godot_string function(godot_pluginscript_language_data *p_data, int p_level) debug_get_stack_level_function;
	godot_string function(godot_pluginscript_language_data *p_data, int p_level) debug_get_stack_level_source;
	void function(godot_pluginscript_language_data *p_data, int p_level, godot_pool_string_array *p_locals, godot_array *p_values, int p_max_subitems, int p_max_depth) debug_get_stack_level_locals;
	void function(godot_pluginscript_language_data *p_data, int p_level, godot_pool_string_array *p_members, godot_array *p_values, int p_max_subitems, int p_max_depth) debug_get_stack_level_members;
	void function(godot_pluginscript_language_data *p_data, godot_pool_string_array *p_locals, godot_array *p_values, int p_max_subitems, int p_max_depth) debug_get_globals;
	godot_string function(godot_pluginscript_language_data *p_data, int p_level, const godot_string *p_expression, int p_max_subitems, int p_max_depth) debug_parse_stack_level_expression;

	// TODO: could this stuff be moved to the godot_pluginscript_language_desc ?
	void function(godot_pluginscript_language_data *p_data, godot_array *r_functions) get_public_functions;
	void function(godot_pluginscript_language_data *p_data, godot_dictionary *r_constants) get_public_constants;

	void function(godot_pluginscript_language_data *p_data) profiling_start;
	void function(godot_pluginscript_language_data *p_data) profiling_stop;
	int function(godot_pluginscript_language_data *p_data, godot_pluginscript_profiling_data *r_info, int p_info_max) profiling_get_accumulated_data;
	int function(godot_pluginscript_language_data *p_data, godot_pluginscript_profiling_data *r_info, int p_info_max) profiling_get_frame_data;
	void function(godot_pluginscript_language_data *p_data) profiling_frame;

	godot_pluginscript_script_desc script_desc;
}


