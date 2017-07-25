/*************************************************************************/
/*  gdnative.h                                                           */
/*************************************************************************/
/*                       This file is part of:                           */
/*                           GODOT ENGINE                                */
/*                    http://www.godotengine.org                         */
/*************************************************************************/
/* Copyright (c) 2007-2017 Juan Linietsky, Ariel Manzur.                 */
/* Copyright (c) 2014-2017 Godot Engine contributors (cf. AUTHORS.md)    */
/*                                                                       */
/* Permission is hereby granted, free of charge, to any person obtaining */
/* a copy of this software and associated documentation files (the       */
/* "Software"), to deal in the Software without restriction, including   */
/* without limitation the rights to use, copy, modify, merge, publish,   */
/* distribute, sublicense, and/or sell copies of the Software, and to    */
/* permit persons to whom the Software is furnished to do so, subject to */
/* the following conditions:                                             */
/*                                                                       */
/* The above copyright notice and this permission notice shall be        */
/* included in all copies or substantial portions of the Software.       */
/*                                                                       */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,       */
/* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF    */
/* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.*/
/* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY  */
/* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,  */
/* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE     */
/* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                */
/*************************************************************************/
module godot.c.gdnative;

@nogc nothrow:
extern(C):


enum GODOT_API_VERSION = 1;

////// Error

enum godot_error {
	GODOT_OK,
	GODOT_FAILED, ///< Generic fail error
	GODOT_ERR_UNAVAILABLE, ///< What is requested is unsupported/unavailable
	GODOT_ERR_UNCONFIGURED, ///< The object being used hasnt been properly set up yet
	GODOT_ERR_UNAUTHORIZED, ///< Missing credentials for requested resource
	GODOT_ERR_PARAMETER_RANGE_ERROR, ///< Parameter given out of range (5)
	GODOT_ERR_OUT_OF_MEMORY, ///< Out of memory
	GODOT_ERR_FILE_NOT_FOUND,
	GODOT_ERR_FILE_BAD_DRIVE,
	GODOT_ERR_FILE_BAD_PATH,
	GODOT_ERR_FILE_NO_PERMISSION, // (10)
	GODOT_ERR_FILE_ALREADY_IN_USE,
	GODOT_ERR_FILE_CANT_OPEN,
	GODOT_ERR_FILE_CANT_WRITE,
	GODOT_ERR_FILE_CANT_READ,
	GODOT_ERR_FILE_UNRECOGNIZED, // (15)
	GODOT_ERR_FILE_CORRUPT,
	GODOT_ERR_FILE_MISSING_DEPENDENCIES,
	GODOT_ERR_FILE_EOF,
	GODOT_ERR_CANT_OPEN, ///< Can't open a resource/socket/file
	GODOT_ERR_CANT_CREATE, // (20)
	GODOT_ERR_QUERY_FAILED,
	GODOT_ERR_ALREADY_IN_USE,
	GODOT_ERR_LOCKED, ///< resource is locked
	GODOT_ERR_TIMEOUT,
	GODOT_ERR_CANT_CONNECT, // (25)
	GODOT_ERR_CANT_RESOLVE,
	GODOT_ERR_CONNECTION_ERROR,
	GODOT_ERR_CANT_AQUIRE_RESOURCE,
	GODOT_ERR_CANT_FORK,
	GODOT_ERR_INVALID_DATA, ///< Data passed is invalid	(30)
	GODOT_ERR_INVALID_PARAMETER, ///< Parameter passed is invalid
	GODOT_ERR_ALREADY_EXISTS, ///< When adding, item already exists
	GODOT_ERR_DOES_NOT_EXIST, ///< When retrieving/erasing, it item does not exist
	GODOT_ERR_DATABASE_CANT_READ, ///< database is full
	GODOT_ERR_DATABASE_CANT_WRITE, ///< database is full	(35)
	GODOT_ERR_COMPILATION_FAILED,
	GODOT_ERR_METHOD_NOT_FOUND,
	GODOT_ERR_LINK_FAILED,
	GODOT_ERR_SCRIPT_FAILED,
	GODOT_ERR_CYCLIC_LINK, // (40)
	GODOT_ERR_INVALID_DECLARATION,
	GODOT_ERR_DUPLICATE_SYMBOL,
	GODOT_ERR_PARSE_ERROR,
	GODOT_ERR_BUSY,
	GODOT_ERR_SKIP, // (45)
	GODOT_ERR_HELP, ///< user requested help!!
	GODOT_ERR_BUG, ///< a bug in the software certainly happened, due to a double check failing or unexpected behavior.
	GODOT_ERR_PRINTER_ON_FIRE, /// the parallel port printer is engulfed in flames
	GODOT_ERR_OMFG_THIS_IS_VERY_VERY_BAD, ///< shit happens, has never been used, though
	GODOT_ERR_WTF = GODOT_ERR_OMFG_THIS_IS_VERY_VERY_BAD ///< short version of the above
}

////// bool

alias godot_bool = int; // really `bool` = `_Bool` from C's stdbool.h

enum GODOT_TRUE = 1;
enum GODOT_FALSE = 0;

/////// int

alias godot_int = int; // C++'s int; Godot assumes it to be always 32 bits.

/////// real

alias godot_real = float;

/////// Object reference (type-safe void pointer)
struct godot_object
{
	package(godot) void* ptr;
}





/////// String

public import godot.c.string;

////// Vector2

public import godot.c.vector2;

////// Rect2

public import godot.c.rect2;

////// Vector3

public import godot.c.vector3;

////// Transform2D

public import godot.c.transform2d;

/////// Plane

public import godot.c.plane;

/////// Quat

public import godot.c.quat;

/////// Rect3

public import godot.c.rect3;

/////// Basis

public import godot.c.basis;

/////// Transform

public import godot.c.transform;

/////// Color

public import godot.c.color;

/////// NodePath

public import godot.c.node_path;

/////// RID

public import godot.c.rid;

/////// Dictionary

public import godot.c.dictionary;

/////// Array

public import godot.c.array;

// single API file for Pool*Array
public import godot.c.pool_arrays;

void godot_object_destroy(godot_object p_o);

////// Variant

public import godot.c.variant;

////// Singleton API

godot_object godot_global_get_singleton(char* p_name); // result shouldn't be freed

////// MethodBind API

struct godot_method_bind {
	ubyte[1] _dont_touch_that; // TODO
}

godot_method_bind* godot_method_bind_get_method(const char* p_classname, const char* p_methodname);
void godot_method_bind_ptrcall(godot_method_bind *p_method_bind, godot_object p_instance, const void **p_args = null, void *p_ret = null);
godot_variant godot_method_bind_call(godot_method_bind *p_method_bind, godot_object p_instance, const godot_variant **p_args, const int p_arg_count, godot_variant_call_error *p_call_error);
////// Script API

struct godot_gdnative_init_options {
	godot_bool in_editor;
	ulong core_api_hash;
	ulong editor_api_hash;
	ulong no_api_hash;
}

struct godot_gdnative_terminate_options {
	godot_bool in_editor;
}

alias godot_class_constructor = godot_object function();

godot_class_constructor godot_get_class_constructor(const char *p_classname);

godot_dictionary godot_get_global_constants();

////// GDNative procedure types
alias godot_gdnative_init_fn = void function(godot_gdnative_init_options *);
alias godot_gdnative_terminate_fn = void function(godot_gdnative_terminate_options *);
alias godot_gdnative_procedure_fn = godot_variant function(void *, godot_array *);

////// System Functions

//using these will help Godot track how much memory is in use in debug mode
void* godot_alloc(int p_bytes);
void* godot_realloc(void* p_ptr, int p_bytes);
void godot_free(void* p_ptr);

void godot_print_error(const char *p_description, const char *p_function, const char *p_file, int p_line);
void godot_print_warning(const char *p_description, const char *p_function, const char *p_file, int p_line);
void godot_print(const godot_string *p_message);



