module api;

import api.util;
import api.classes, api.methods, api.enums;

import godotutil.string;

import asdf;


struct Header
{
	int version_major, version_minor, version_patch;
	string version_status, version_build, version_full_name;
}

struct TypeSize
{
	string name;
	int size;
}
struct ConfigurationTypeSizes
{
	string build_configuration;
	TypeSize[] sizes;
}

struct MemberOffset
{
	string member;
	int offset;
}
struct TypeMemberOffsets
{
	string name;
	MemberOffset[] members;
}
struct ConfigurationTypeMemberOffsets
{
	string build_configuration;
	TypeMemberOffsets[] classes;
}



struct NativeStructure
{
	Type name; // definition? maybe?
	string format; // expression(ish)
}

struct Api
{
	Header header;
	ConfigurationTypeSizes[] builtin_class_sizes;
	Constant[] global_constants;
	Enum[] global_enums;
	Function[] utility_functions;
	BuiltinClass[] builtin_classes;
	Class[] classes;
	Singleton[] singletons;
	NativeStructure[] native_structures;
}


