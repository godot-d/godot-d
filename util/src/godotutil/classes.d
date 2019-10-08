/++
Information about classes in a Godot-D project.

These structs only store the info to be used by Godot-D. Use the class-finder
subpackage to actually obtain the info by parsing D files.

TODO: replace temporary CSV serialization with proper JSON.
+/
module godotutil.classes;

import std.string;

import std.algorithm : map;
import std.array : join;
import std.range;
import std.conv : text;
import std.meta;

/// Information about what classes were found in a D source file.
struct FileInfo
{
	string name; /// filename relative to the source directory
	string hash; /// hash of the file, to avoid re-parsing files that haven't changed
	string moduleName;
	string mainClass; /// the class with the same name as the module, if it exists
	string[] classes; /// all classes in the file

	string toCsv() const
	{
		string ret = only(name, hash, moduleName, mainClass).join(",");
		foreach(c; classes)
		{
			ret ~= ",";
			ret ~= c;
		}
		return ret;
	}
	static FileInfo fromCsv(string csv)
	{
		FileInfo ret;
		auto s = csv.split(',');
		static foreach(v; AliasSeq!("name", "hash", "moduleName", "mainClass"))
		{
			mixin("ret."~v~" = s.front;");
			s.popFront();
		}
		foreach(c; s)
		{
			ret.classes ~= c;
		}
		return ret;
	}
}

/// 
struct ProjectInfo
{
	FileInfo[] files;

	string toCsv() const
	{
		return files.map!(f => f.toCsv).join("\n");
	}
	static ProjectInfo fromCsv(string csv)
	{
		ProjectInfo ret;
		foreach(l; csv.splitLines)
		{
			ret.files ~= FileInfo.fromCsv(l);
		}
		return ret;
	}
}


