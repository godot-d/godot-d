/// Convenience wrapper for file paths
module godot.util.path;

import godot, godot.projectsettings;

/++
A file path inside the Godot filesystem represented as a local Godot String and
a global D string.

Useful for paths that need to be worked on by functions from both Godot and D.
The conversion is done only once in the constructor and both strings are saved.
+/
struct Path
{
private:
	String _godot;
	CharString _d;
public:
	/// 
	String godot() const { return _godot; }
	/// 
	string d() const { return _d.data; }

	/// 
	void godot(String value)
	{
		_godot = value;
		_d = ProjectSettings.globalizePath(value).utf8;
	}
	/// 
	void d(string value)
	{
		// inefficient back-and-forth; need to construct CharString directly
		String tmp = String(value);
		_d = tmp.utf8;
		_godot = ProjectSettings.localizePath(tmp);
	}

	/// 
	alias local = godot;
	/// 
	alias global = d;

	/// 
	this(String projectLocalPath) { godot = projectLocalPath; }
	/// 
	this(string globalPath) { d = globalPath; }
}

