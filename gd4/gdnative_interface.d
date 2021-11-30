/*************************************************************************/
/*  gdnative_interface.h                                                 */
/*************************************************************************/
/*                       This file is part of:                           */
/*                           GODOT ENGINE                                */
/*                      https://godotengine.org                          */
/*************************************************************************/
/* Copyright (c) 2007-2021 Juan Linietsky, Ariel Manzur.                 */
/* Copyright (c) 2014-2021 Godot Engine contributors (cf. AUTHORS.md).   */
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

import core.stdc.stddef;

extern (C):

/* This is a C class header, you can copy it and use it directly in your own binders.
 * Together with the JSON file, you should be able to generate any binder.
 */

alias char32_t = uint;
alias char16_t = ushort;

/* VARIANT TYPES */

enum GDNativeVariantType
{
    GDNATIVE_VARIANT_TYPE_NIL = 0,

    /*  atomic types */
    GDNATIVE_VARIANT_TYPE_BOOL = 1,
    GDNATIVE_VARIANT_TYPE_INT = 2,
    GDNATIVE_VARIANT_TYPE_FLOAT = 3,
    GDNATIVE_VARIANT_TYPE_STRING = 4,

    /* math types */
    GDNATIVE_VARIANT_TYPE_VECTOR2 = 5,
    GDNATIVE_VARIANT_TYPE_VECTOR2I = 6,
    GDNATIVE_VARIANT_TYPE_RECT2 = 7,
    GDNATIVE_VARIANT_TYPE_RECT2I = 8,
    GDNATIVE_VARIANT_TYPE_VECTOR3 = 9,
    GDNATIVE_VARIANT_TYPE_VECTOR3I = 10,
    GDNATIVE_VARIANT_TYPE_TRANSFORM2D = 11,
    GDNATIVE_VARIANT_TYPE_PLANE = 12,
    GDNATIVE_VARIANT_TYPE_QUATERNION = 13,
    GDNATIVE_VARIANT_TYPE_AABB = 14,
    GDNATIVE_VARIANT_TYPE_BASIS = 15,
    GDNATIVE_VARIANT_TYPE_TRANSFORM3D = 16,

    /* misc types */
    GDNATIVE_VARIANT_TYPE_COLOR = 17,
    GDNATIVE_VARIANT_TYPE_STRING_NAME = 18,
    GDNATIVE_VARIANT_TYPE_NODE_PATH = 19,
    GDNATIVE_VARIANT_TYPE_RID = 20,
    GDNATIVE_VARIANT_TYPE_OBJECT = 21,
    GDNATIVE_VARIANT_TYPE_CALLABLE = 22,
    GDNATIVE_VARIANT_TYPE_SIGNAL = 23,
    GDNATIVE_VARIANT_TYPE_DICTIONARY = 24,
    GDNATIVE_VARIANT_TYPE_ARRAY = 25,

    /* typed arrays */
    GDNATIVE_VARIANT_TYPE_PACKED_BYTE_ARRAY = 26,
    GDNATIVE_VARIANT_TYPE_PACKED_INT32_ARRAY = 27,
    GDNATIVE_VARIANT_TYPE_PACKED_INT64_ARRAY = 28,
    GDNATIVE_VARIANT_TYPE_PACKED_FLOAT32_ARRAY = 29,
    GDNATIVE_VARIANT_TYPE_PACKED_FLOAT64_ARRAY = 30,
    GDNATIVE_VARIANT_TYPE_PACKED_STRING_ARRAY = 31,
    GDNATIVE_VARIANT_TYPE_PACKED_VECTOR2_ARRAY = 32,
    GDNATIVE_VARIANT_TYPE_PACKED_VECTOR3_ARRAY = 33,
    GDNATIVE_VARIANT_TYPE_PACKED_COLOR_ARRAY = 34,

    GDNATIVE_VARIANT_TYPE_VARIANT_MAX = 35
}

enum GDNativeVariantOperator
{
    /* comparison */
    GDNATIVE_VARIANT_OP_EQUAL = 0,
    GDNATIVE_VARIANT_OP_NOT_EQUAL = 1,
    GDNATIVE_VARIANT_OP_LESS = 2,
    GDNATIVE_VARIANT_OP_LESS_EQUAL = 3,
    GDNATIVE_VARIANT_OP_GREATER = 4,
    GDNATIVE_VARIANT_OP_GREATER_EQUAL = 5,
    /* mathematic */
    GDNATIVE_VARIANT_OP_ADD = 6,
    GDNATIVE_VARIANT_OP_SUBTRACT = 7,
    GDNATIVE_VARIANT_OP_MULTIPLY = 8,
    GDNATIVE_VARIANT_OP_DIVIDE = 9,
    GDNATIVE_VARIANT_OP_NEGATE = 10,
    GDNATIVE_VARIANT_OP_POSITIVE = 11,
    GDNATIVE_VARIANT_OP_MODULE = 12,
    /* bitwise */
    GDNATIVE_VARIANT_OP_SHIFT_LEFT = 13,
    GDNATIVE_VARIANT_OP_SHIFT_RIGHT = 14,
    GDNATIVE_VARIANT_OP_BIT_AND = 15,
    GDNATIVE_VARIANT_OP_BIT_OR = 16,
    GDNATIVE_VARIANT_OP_BIT_XOR = 17,
    GDNATIVE_VARIANT_OP_BIT_NEGATE = 18,
    /* logic */
    GDNATIVE_VARIANT_OP_AND = 19,
    GDNATIVE_VARIANT_OP_OR = 20,
    GDNATIVE_VARIANT_OP_XOR = 21,
    GDNATIVE_VARIANT_OP_NOT = 22,
    /* containment */
    GDNATIVE_VARIANT_OP_IN = 23,
    GDNATIVE_VARIANT_OP_MAX = 24
}

alias GDNativeVariantPtr = void*;
alias GDNativeStringNamePtr = void*;
alias GDNativeStringPtr = void*;
alias GDNativeObjectPtr = void*;
alias GDNativeTypePtr = void*;
alias GDNativeExtensionPtr = void*;
alias GDNativeMethodBindPtr = void*;
alias GDNativeInt = long;
alias GDNativeBool = ubyte;
alias GDObjectInstanceID = ulong;

/* VARIANT DATA I/O */

enum GDNativeCallErrorType
{
    GDNATIVE_CALL_OK = 0,
    GDNATIVE_CALL_ERROR_INVALID_METHOD = 1,
    GDNATIVE_CALL_ERROR_INVALID_ARGUMENT = 2, /* expected is variant type */
    GDNATIVE_CALL_ERROR_TOO_MANY_ARGUMENTS = 3, /* expected is number of arguments */
    GDNATIVE_CALL_ERROR_TOO_FEW_ARGUMENTS = 4, /*  expected is number of arguments */
    GDNATIVE_CALL_ERROR_INSTANCE_IS_NULL = 5
}

struct GDNativeCallError
{
    GDNativeCallErrorType error;
    int argument;
    int expected;
}

alias GDNativeVariantFromTypeConstructorFunc = void function (GDNativeVariantPtr, GDNativeTypePtr);
alias GDNativeTypeFromVariantConstructorFunc = void function (GDNativeTypePtr, GDNativeVariantPtr);
alias GDNativePtrOperatorEvaluator = void function (const GDNativeTypePtr p_left, const GDNativeTypePtr p_right, GDNativeTypePtr r_result);
alias GDNativePtrBuiltInMethod = void function (GDNativeTypePtr p_base, const(GDNativeTypePtr)* p_args, GDNativeTypePtr r_return, int p_argument_count);
alias GDNativePtrConstructor = void function (GDNativeTypePtr p_base, const(GDNativeTypePtr)* p_args);
alias GDNativePtrDestructor = void function (GDNativeTypePtr p_base);
alias GDNativePtrSetter = void function (GDNativeTypePtr p_base, const GDNativeTypePtr p_value);
alias GDNativePtrGetter = void function (const GDNativeTypePtr p_base, GDNativeTypePtr r_value);
alias GDNativePtrIndexedSetter = void function (GDNativeTypePtr p_base, GDNativeInt p_index, const GDNativeTypePtr p_value);
alias GDNativePtrIndexedGetter = void function (const GDNativeTypePtr p_base, GDNativeInt p_index, GDNativeTypePtr r_value);
alias GDNativePtrKeyedSetter = void function (GDNativeTypePtr p_base, const GDNativeTypePtr p_key, const GDNativeTypePtr p_value);
alias GDNativePtrKeyedGetter = void function (const GDNativeTypePtr p_base, const GDNativeTypePtr p_key, GDNativeTypePtr r_value);
alias GDNativePtrKeyedChecker = uint function (const GDNativeVariantPtr p_base, const GDNativeVariantPtr p_key);
alias GDNativePtrUtilityFunction = void function (GDNativeTypePtr r_return, const(GDNativeTypePtr)* p_arguments, int p_argument_count);

alias GDNativeClassConstructor = void* function ();

alias GDNativeInstanceBindingCreateCallback = void* function (void* p_token, void* p_instance);
alias GDNativeInstanceBindingFreeCallback = void function (void* p_token, void* p_instance, void* p_binding);
alias GDNativeInstanceBindingReferenceCallback = ubyte function (void* p_token, void* p_binding, GDNativeBool p_reference);

struct GDNativeInstanceBindingCallbacks
{
    GDNativeInstanceBindingCreateCallback create_callback;
    GDNativeInstanceBindingFreeCallback free_callback;
    GDNativeInstanceBindingReferenceCallback reference_callback;
}

/* EXTENSION CLASSES */

alias GDExtensionClassInstancePtr = void*;

alias GDNativeExtensionClassSet = ubyte function (GDExtensionClassInstancePtr p_instance, const GDNativeStringNamePtr p_name, const GDNativeVariantPtr p_value);
alias GDNativeExtensionClassGet = ubyte function (GDExtensionClassInstancePtr p_instance, const GDNativeStringNamePtr p_name, GDNativeVariantPtr r_ret);

struct GDNativePropertyInfo
{
    uint type;
    const(char)* name;
    const(char)* class_name;
    uint hint;
    const(char)* hint_string;
    uint usage;
}

alias GDNativeExtensionClassGetPropertyList = const(GDNativePropertyInfo)* function (GDExtensionClassInstancePtr p_instance, uint* r_count);
alias GDNativeExtensionClassFreePropertyList = void function (GDExtensionClassInstancePtr p_instance, const(GDNativePropertyInfo)* p_list);
alias GDNativeExtensionClassNotification = void function (GDExtensionClassInstancePtr p_instance, int p_what);
alias GDNativeExtensionClassToString = const(char)* function (GDExtensionClassInstancePtr p_instance);
alias GDNativeExtensionClassReference = void function (GDExtensionClassInstancePtr p_instance);
alias GDNativeExtensionClassUnreference = void function (GDExtensionClassInstancePtr p_instance);
alias GDNativeExtensionClassCallVirtual = void function (GDExtensionClassInstancePtr p_instance, const(GDNativeTypePtr)* p_args, GDNativeTypePtr r_ret);
alias GDNativeExtensionClassCreateInstance = void* function (void* p_userdata);
alias GDNativeExtensionClassFreeInstance = void function (void* p_userdata, GDExtensionClassInstancePtr p_instance);
alias GDNativeExtensionClassObjectInstance = void function (GDExtensionClassInstancePtr p_instance, GDNativeObjectPtr p_object_instance);
alias GDNativeExtensionClassGetVirtual = void function (void* p_userdata, const(char)* p_name) function (void* p_userdata, const(char)* p_name);

struct GDNativeExtensionClassCreationInfo
{
    GDNativeExtensionClassSet set_func;
    GDNativeExtensionClassGet get_func;
    GDNativeExtensionClassGetPropertyList get_property_list_func;
    GDNativeExtensionClassFreePropertyList free_property_list_func;
    GDNativeExtensionClassNotification notification_func;
    GDNativeExtensionClassToString to_string_func;
    GDNativeExtensionClassReference reference_func;
    GDNativeExtensionClassUnreference unreference_func;
    GDNativeExtensionClassCreateInstance create_instance_func; /* this one is mandatory */
    GDNativeExtensionClassFreeInstance free_instance_func; /* this one is mandatory */
    GDNativeExtensionClassObjectInstance object_instance_func; /* this one is mandatory */
    GDNativeExtensionClassGetVirtual get_virtual_func;
    void* class_userdata;
}

alias GDNativeExtensionClassLibraryPtr = void*;

//alias GDNativeExtensionClassGetPropertyList = const(GDNativePropertyInfo)* function (GDExtensionClassInstancePtr p_instance, uint* r_count);

/* Method */

enum GDNativeExtensionClassMethodFlags
{
    GDNATIVE_EXTENSION_METHOD_FLAG_NORMAL = 1,
    GDNATIVE_EXTENSION_METHOD_FLAG_EDITOR = 2,
    GDNATIVE_EXTENSION_METHOD_FLAG_NOSCRIPT = 4,
    GDNATIVE_EXTENSION_METHOD_FLAG_CONST = 8,
    GDNATIVE_EXTENSION_METHOD_FLAG_REVERSE = 16, /* used for events */
    GDNATIVE_EXTENSION_METHOD_FLAG_VIRTUAL = 32,
    GDNATIVE_EXTENSION_METHOD_FLAG_FROM_SCRIPT = 64,
    GDNATIVE_EXTENSION_METHOD_FLAG_VARARG = 128,
    GDNATIVE_EXTENSION_METHOD_FLAG_STATIC = 256,
    GDNATIVE_EXTENSION_METHOD_FLAGS_DEFAULT = GDNATIVE_EXTENSION_METHOD_FLAG_NORMAL
}

enum GDNativeExtensionClassMethodArgumentMetadata
{
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_NONE = 0,
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT8 = 1,
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT16 = 2,
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT32 = 3,
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_INT64 = 4,
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT8 = 5,
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT16 = 6,
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT32 = 7,
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_INT_IS_UINT64 = 8,
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_FLOAT = 9,
    GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_REAL_IS_DOUBLE = 10
}

alias GDNativeExtensionClassMethodCall = void function (void* method_userdata, GDExtensionClassInstancePtr p_instance, const(GDNativeVariantPtr)* p_args, const GDNativeInt p_argument_count, GDNativeVariantPtr r_return, GDNativeCallError* r_error);
alias GDNativeExtensionClassMethodPtrCall = void function (void* method_userdata, GDExtensionClassInstancePtr p_instance, const(GDNativeTypePtr)* p_args, GDNativeTypePtr r_ret);

/* passing -1 as argument in the following functions refers to the return type */
alias GDNativeExtensionClassMethodGetArgumentType = GDNativeVariantType function (void* p_method_userdata, int p_argument);
alias GDNativeExtensionClassMethodGetArgumentInfo = void function (void* p_method_userdata, int p_argument, GDNativePropertyInfo* r_info);
alias GDNativeExtensionClassMethodGetArgumentMetadata = GDNativeExtensionClassMethodArgumentMetadata function (void* p_method_userdata, int p_argument);

struct GDNativeExtensionClassMethodInfo
{
    const(char)* name;
    void* method_userdata;
    GDNativeExtensionClassMethodCall call_func;
    GDNativeExtensionClassMethodPtrCall ptrcall_func;
    uint method_flags; /* GDNativeExtensionClassMethodFlags */
    uint argument_count;
    GDNativeBool has_return_value;
    GDNativeExtensionClassMethodGetArgumentType get_argument_type_func;
    GDNativeExtensionClassMethodGetArgumentInfo get_argument_info_func; /* name and hint information for the argument can be omitted in release builds. Class name should always be present if it applies. */
    GDNativeExtensionClassMethodGetArgumentMetadata get_argument_metadata_func;
    uint default_argument_count;
    GDNativeVariantPtr* default_arguments;
}

/* INTERFACE */

struct GDNativeInterface
{
    uint version_major;
    uint version_minor;
    uint version_patch;
    const(char)* version_string;

    /* GODOT CORE */
    void* function (size_t p_bytes) mem_alloc;
    void* function (void* p_ptr, size_t p_bytes) mem_realloc;
    void function (void* p_ptr) mem_free;

    void function (const(char)* p_description, const(char)* p_function, const(char)* p_file, int p_line) print_error;
    void function (const(char)* p_description, const(char)* p_function, const(char)* p_file, int p_line) print_warning;
    void function (const(char)* p_description, const(char)* p_function, const(char)* p_file, int p_line) print_script_error;

    /* GODOT VARIANT */

    /* variant general */
    void function (GDNativeVariantPtr r_dest, const GDNativeVariantPtr p_src) variant_new_copy;
    void function (GDNativeVariantPtr r_dest) variant_new_nil;
    void function (GDNativeVariantPtr p_self) variant_destroy;

    /* variant type */
    void function (GDNativeVariantPtr p_self, const GDNativeStringNamePtr p_method, const(GDNativeVariantPtr)* p_args, const GDNativeInt p_argument_count, GDNativeVariantPtr r_return, GDNativeCallError* r_error) variant_call;
    void function (GDNativeVariantType p_type, const GDNativeStringNamePtr p_method, const(GDNativeVariantPtr)* p_args, const GDNativeInt p_argument_count, GDNativeVariantPtr r_return, GDNativeCallError* r_error) variant_call_static;
    void function (GDNativeVariantOperator p_op, const GDNativeVariantPtr p_a, const GDNativeVariantPtr p_b, GDNativeVariantPtr r_return, GDNativeBool* r_valid) variant_evaluate;
    void function (GDNativeVariantPtr p_self, const GDNativeVariantPtr p_key, const GDNativeVariantPtr p_value, GDNativeBool* r_valid) variant_set;
    void function (GDNativeVariantPtr p_self, const GDNativeStringNamePtr p_key, const GDNativeVariantPtr p_value, GDNativeBool* r_valid) variant_set_named;
    void function (GDNativeVariantPtr p_self, const GDNativeVariantPtr p_key, const GDNativeVariantPtr p_value, GDNativeBool* r_valid) variant_set_keyed;
    void function (GDNativeVariantPtr p_self, GDNativeInt p_index, const GDNativeVariantPtr p_value, GDNativeBool* r_valid, GDNativeBool* r_oob) variant_set_indexed;
    void function (const GDNativeVariantPtr p_self, const GDNativeVariantPtr p_key, GDNativeVariantPtr r_ret, GDNativeBool* r_valid) variant_get;
    void function (const GDNativeVariantPtr p_self, const GDNativeStringNamePtr p_key, GDNativeVariantPtr r_ret, GDNativeBool* r_valid) variant_get_named;
    void function (const GDNativeVariantPtr p_self, const GDNativeVariantPtr p_key, GDNativeVariantPtr r_ret, GDNativeBool* r_valid) variant_get_keyed;
    void function (const GDNativeVariantPtr p_self, GDNativeInt p_index, GDNativeVariantPtr r_ret, GDNativeBool* r_valid, GDNativeBool* r_oob) variant_get_indexed;
    GDNativeBool function (const GDNativeVariantPtr p_self, GDNativeVariantPtr r_iter, GDNativeBool* r_valid) variant_iter_init;
    GDNativeBool function (const GDNativeVariantPtr p_self, GDNativeVariantPtr r_iter, GDNativeBool* r_valid) variant_iter_next;
    void function (const GDNativeVariantPtr p_self, GDNativeVariantPtr r_iter, GDNativeVariantPtr r_ret, GDNativeBool* r_valid) variant_iter_get;
    GDNativeBool function (const GDNativeVariantPtr p_self, const GDNativeVariantPtr p_other) variant_hash_compare;
    GDNativeBool function (const GDNativeVariantPtr p_self) variant_booleanize;
    void function (const GDNativeVariantPtr p_a, const GDNativeVariantPtr p_b, float p_c, GDNativeVariantPtr r_dst) variant_blend;
    void function (const GDNativeVariantPtr p_a, const GDNativeVariantPtr p_b, float p_c, GDNativeVariantPtr r_dst) variant_interpolate;
    void function (const GDNativeVariantPtr p_self, GDNativeVariantPtr r_ret, GDNativeBool p_deep) variant_duplicate;
    void function (const GDNativeVariantPtr p_self, GDNativeStringPtr r_ret) variant_stringify;

    GDNativeVariantType function (const GDNativeVariantPtr p_self) variant_get_type;
    GDNativeBool function (const GDNativeVariantPtr p_self, const GDNativeStringNamePtr p_method) variant_has_method;
    GDNativeBool function (GDNativeVariantType p_type, const GDNativeStringNamePtr p_member) variant_has_member;
    GDNativeBool function (const GDNativeVariantPtr p_self, const GDNativeVariantPtr p_key, GDNativeBool* r_valid) variant_has_key;
    void function (GDNativeVariantType p_type, GDNativeStringPtr r_name) variant_get_type_name;
    GDNativeBool function (GDNativeVariantType p_from, GDNativeVariantType p_to) variant_can_convert;
    GDNativeBool function (GDNativeVariantType p_from, GDNativeVariantType p_to) variant_can_convert_strict;

    /* ptrcalls */
    GDNativeVariantFromTypeConstructorFunc function (GDNativeVariantType p_type) get_variant_from_type_constructor;
    GDNativeTypeFromVariantConstructorFunc function (GDNativeVariantType p_type) get_variant_to_type_constructor;
    GDNativePtrOperatorEvaluator function (GDNativeVariantOperator p_operator, GDNativeVariantType p_type_a, GDNativeVariantType p_type_b) variant_get_ptr_operator_evaluator;
    GDNativePtrBuiltInMethod function (GDNativeVariantType p_type, const(char)* p_method, GDNativeInt p_hash) variant_get_ptr_builtin_method;
    GDNativePtrConstructor function (GDNativeVariantType p_type, int p_constructor) variant_get_ptr_constructor;
    GDNativePtrDestructor function (GDNativeVariantType p_type) variant_get_ptr_destructor;
    void function (GDNativeVariantType p_type, GDNativeVariantPtr p_base, const(GDNativeVariantPtr)* p_args, int p_argument_count, GDNativeCallError* r_error) variant_construct;
    GDNativePtrSetter function (GDNativeVariantType p_type, const(char)* p_member) variant_get_ptr_setter;
    GDNativePtrGetter function (GDNativeVariantType p_type, const(char)* p_member) variant_get_ptr_getter;
    GDNativePtrIndexedSetter function (GDNativeVariantType p_type) variant_get_ptr_indexed_setter;
    GDNativePtrIndexedGetter function (GDNativeVariantType p_type) variant_get_ptr_indexed_getter;
    GDNativePtrKeyedSetter function (GDNativeVariantType p_type) variant_get_ptr_keyed_setter;
    GDNativePtrKeyedGetter function (GDNativeVariantType p_type) variant_get_ptr_keyed_getter;
    GDNativePtrKeyedChecker function (GDNativeVariantType p_type) variant_get_ptr_keyed_checker;
    void function (GDNativeVariantType p_type, const(char)* p_constant, GDNativeVariantPtr r_ret) variant_get_constant_value;
    GDNativePtrUtilityFunction function (const(char)* p_function, GDNativeInt p_hash) variant_get_ptr_utility_function;

    /*  extra utilities */

    void function (GDNativeStringPtr r_dest, const(char)* p_contents) string_new_with_latin1_chars;
    void function (GDNativeStringPtr r_dest, const(char)* p_contents) string_new_with_utf8_chars;
    void function (GDNativeStringPtr r_dest, const(char16_t)* p_contents) string_new_with_utf16_chars;
    void function (GDNativeStringPtr r_dest, const(char32_t)* p_contents) string_new_with_utf32_chars;
    void function (GDNativeStringPtr r_dest, const(wchar_t)* p_contents) string_new_with_wide_chars;
    void function (GDNativeStringPtr r_dest, const(char)* p_contents, const GDNativeInt p_size) string_new_with_latin1_chars_and_len;
    void function (GDNativeStringPtr r_dest, const(char)* p_contents, const GDNativeInt p_size) string_new_with_utf8_chars_and_len;
    void function (GDNativeStringPtr r_dest, const(char16_t)* p_contents, const GDNativeInt p_size) string_new_with_utf16_chars_and_len;
    void function (GDNativeStringPtr r_dest, const(char32_t)* p_contents, const GDNativeInt p_size) string_new_with_utf32_chars_and_len;
    void function (GDNativeStringPtr r_dest, const(wchar_t)* p_contents, const GDNativeInt p_size) string_new_with_wide_chars_and_len;
    /* Information about the following functions:
    	 * - The return value is the resulting encoded string length.
    	 * - The length returned is in characters, not in bytes. It also does not include a trailing zero.
    	 * - These functions also do not write trailing zero, If you need it, write it yourself at the position indicated by the length (and make sure to allocate it).
    	 * - Passing NULL in r_text means only the length is computed (again, without including trailing zero).
    	 * - p_max_write_length argument is in characters, not bytes. It will be ignored if r_text is NULL.
    	 * - p_max_write_length argument does not affect the return value, it's only to cap write length.
    	 */
    GDNativeInt function (const GDNativeStringPtr p_self, char* r_text, GDNativeInt p_max_write_length) string_to_latin1_chars;
    GDNativeInt function (const GDNativeStringPtr p_self, char* r_text, GDNativeInt p_max_write_length) string_to_utf8_chars;
    GDNativeInt function (const GDNativeStringPtr p_self, char16_t* r_text, GDNativeInt p_max_write_length) string_to_utf16_chars;
    GDNativeInt function (const GDNativeStringPtr p_self, char32_t* r_text, GDNativeInt p_max_write_length) string_to_utf32_chars;
    GDNativeInt function (const GDNativeStringPtr p_self, wchar_t* r_text, GDNativeInt p_max_write_length) string_to_wide_chars;
    char32_t* function (GDNativeStringPtr p_self, GDNativeInt p_index) string_operator_index;
    const(char32_t)* function (const GDNativeStringPtr p_self, GDNativeInt p_index) string_operator_index_const;

    /* Packed array functions */

    ubyte* function (GDNativeTypePtr p_self, GDNativeInt p_index) packed_byte_array_operator_index; // p_self should be a PackedByteArray
    const(ubyte)* function (const GDNativeTypePtr p_self, GDNativeInt p_index) packed_byte_array_operator_index_const; // p_self should be a PackedByteArray

    GDNativeTypePtr function (GDNativeTypePtr p_self, GDNativeInt p_index) packed_color_array_operator_index; // p_self should be a PackedColorArray, returns Color ptr
    GDNativeTypePtr function (const GDNativeTypePtr p_self, GDNativeInt p_index) packed_color_array_operator_index_const; // p_self should be a PackedColorArray, returns Color ptr

    float* function (GDNativeTypePtr p_self, GDNativeInt p_index) packed_float32_array_operator_index; // p_self should be a PackedFloat32Array
    const(float)* function (const GDNativeTypePtr p_self, GDNativeInt p_index) packed_float32_array_operator_index_const; // p_self should be a PackedFloat32Array
    double* function (GDNativeTypePtr p_self, GDNativeInt p_index) packed_float64_array_operator_index; // p_self should be a PackedFloat64Array
    const(double)* function (const GDNativeTypePtr p_self, GDNativeInt p_index) packed_float64_array_operator_index_const; // p_self should be a PackedFloat64Array

    int* function (GDNativeTypePtr p_self, GDNativeInt p_index) packed_int32_array_operator_index; // p_self should be a PackedInt32Array
    const(int)* function (const GDNativeTypePtr p_self, GDNativeInt p_index) packed_int32_array_operator_index_const; // p_self should be a PackedInt32Array
    long* function (GDNativeTypePtr p_self, GDNativeInt p_index) packed_int64_array_operator_index; // p_self should be a PackedInt32Array
    const(long)* function (const GDNativeTypePtr p_self, GDNativeInt p_index) packed_int64_array_operator_index_const; // p_self should be a PackedInt32Array

    GDNativeStringPtr function (GDNativeTypePtr p_self, GDNativeInt p_index) packed_string_array_operator_index; // p_self should be a PackedStringArray
    GDNativeStringPtr function (const GDNativeTypePtr p_self, GDNativeInt p_index) packed_string_array_operator_index_const; // p_self should be a PackedStringArray

    GDNativeTypePtr function (GDNativeTypePtr p_self, GDNativeInt p_index) packed_vector2_array_operator_index; // p_self should be a PackedVector2Array, returns Vector2 ptr
    GDNativeTypePtr function (const GDNativeTypePtr p_self, GDNativeInt p_index) packed_vector2_array_operator_index_const; // p_self should be a PackedVector2Array, returns Vector2 ptr
    GDNativeTypePtr function (GDNativeTypePtr p_self, GDNativeInt p_index) packed_vector3_array_operator_index; // p_self should be a PackedVector3Array, returns Vector3 ptr
    GDNativeTypePtr function (const GDNativeTypePtr p_self, GDNativeInt p_index) packed_vector3_array_operator_index_const; // p_self should be a PackedVector3Array, returns Vector3 ptr

    GDNativeVariantPtr function (GDNativeTypePtr p_self, GDNativeInt p_index) array_operator_index; // p_self should be an Array ptr
    GDNativeVariantPtr function (const GDNativeTypePtr p_self, GDNativeInt p_index) array_operator_index_const; // p_self should be an Array ptr

    /* OBJECT */

    void function (const GDNativeMethodBindPtr p_method_bind, GDNativeObjectPtr p_instance, const(GDNativeVariantPtr)* p_args, GDNativeInt p_arg_count, GDNativeVariantPtr r_ret, GDNativeCallError* r_error) object_method_bind_call;
    void function (const GDNativeMethodBindPtr p_method_bind, GDNativeObjectPtr p_instance, const(GDNativeTypePtr)* p_args, GDNativeTypePtr r_ret) object_method_bind_ptrcall;
    void function (GDNativeObjectPtr p_o) object_destroy;
    GDNativeObjectPtr function (const(char)* p_name) global_get_singleton;
    void* function (GDNativeObjectPtr p_o, void* p_token, const(GDNativeInstanceBindingCallbacks)* p_callbacks) object_get_instance_binding;
    void function (GDNativeObjectPtr p_o, void* p_token, void* p_binding, const(GDNativeInstanceBindingCallbacks)* p_callbacks) object_set_instance_binding;

    GDNativeObjectPtr function (const GDNativeObjectPtr p_object, void* p_class_tag) object_cast_to;
    GDNativeObjectPtr function (GDObjectInstanceID p_instance_id) object_get_instance_from_id;
    GDObjectInstanceID function (const GDNativeObjectPtr p_object) object_get_instance_id;

    /* CLASSDB */

    GDNativeClassConstructor function (const(char)* p_classname, GDNativeExtensionPtr* r_extension) classdb_get_constructor;
    GDNativeObjectPtr function (GDNativeClassConstructor p_constructor, GDNativeExtensionPtr p_extension) classdb_construct_object;
    GDNativeMethodBindPtr function (const(char)* p_classname, const(char)* p_methodname, GDNativeInt p_hash) classdb_get_method_bind;
    void* function (const(char)* p_classname) classdb_get_class_tag;

    /* CLASSDB EXTENSION */

    void function (const GDNativeExtensionClassLibraryPtr p_library, const(char)* p_class_name, const(char)* p_parent_class_name, const(GDNativeExtensionClassCreationInfo)* p_extension_funcs) classdb_register_extension_class;
    void function (const GDNativeExtensionClassLibraryPtr p_library, const(char)* p_class_name, const(GDNativeExtensionClassMethodInfo)* p_method_info) classdb_register_extension_class_method;
    void function (const GDNativeExtensionClassLibraryPtr p_library, const(char)* p_class_name, const(char)* p_enum_name, const(char)* p_constant_name, GDNativeInt p_constant_value) classdb_register_extension_class_integer_constant;
    void function (const GDNativeExtensionClassLibraryPtr p_library, const(char)* p_class_name, const(GDNativePropertyInfo)* p_info, const(char)* p_setter, const(char)* p_getter) classdb_register_extension_class_property;
    void function (const GDNativeExtensionClassLibraryPtr p_library, const(char)* p_class_name, const(char)* p_group_name, const(char)* p_prefix) classdb_register_extension_class_property_group;
    void function (const GDNativeExtensionClassLibraryPtr p_library, const(char)* p_class_name, const(char)* p_subgroup_name, const(char)* p_prefix) classdb_register_extension_class_property_subgroup;
    void function (const GDNativeExtensionClassLibraryPtr p_library, const(char)* p_class_name, const(char)* p_signal_name, const(GDNativePropertyInfo)* p_argument_info, GDNativeInt p_argument_count) classdb_register_extension_class_signal;
    void function (const GDNativeExtensionClassLibraryPtr p_library, const(char)* p_class_name) classdb_unregister_extension_class; /* Unregistering a parent class before a class that inherits it will result in failure. Inheritors must be unregistered first. */
}

/* INITIALIZATION */

enum GDNativeInitializationLevel
{
    GDNATIVE_INITIALIZATION_CORE = 0,
    GDNATIVE_INITIALIZATION_SERVERS = 1,
    GDNATIVE_INITIALIZATION_SCENE = 2,
    GDNATIVE_INITIALIZATION_EDITOR = 3,
    GDNATIVE_INITIALIZATION_DRIVER = 4,
    GDNATIVE_MAX_INITIALIZATION_LEVEL = 5
}

struct GDNativeInitialization
{
    /* Minimum initialization level required.
    	 * If Core or Servers, the extension needs editor or game restart to take effect */
    GDNativeInitializationLevel minimum_initialization_level;
    /* Up to the user to supply when initializing */
    void* userdata;
    /* This function will be called multiple times for each initialization level. */
    void function (void* userdata, GDNativeInitializationLevel p_level) initialize;
    void function (void* userdata, GDNativeInitializationLevel p_level) deinitialize;
}

/* Define a C function prototype that implements the function below and expose it to dlopen() (or similar).
 * It will be called on initialization. The name must be an unique one specified in the .gdextension config file.
 */

alias GDNativeInitializationFunction = ubyte function (const(GDNativeInterface)* p_interface, const GDNativeExtensionClassLibraryPtr p_library, GDNativeInitialization* r_initialization);

