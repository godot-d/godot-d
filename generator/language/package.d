module language;

import godotAPI;

/++
Definition for a language that the generator can output native bindings for.
+/
struct Language
{
	/++
	A file output for a Godot class.
	+/
	static struct ClassOutputFile
	{
		string prefix = null; /// added directly before the filename (after directory separator)
		string extension; /// extension, without the dot
		
		/// function called to generate this file
		/// Returns: the contents to put in the file
		string function(in GodotClass c) generator;
	}
	
	/++
	Outputs per Godot class. Each one is written *unless* return value is null.
	There could be more than 1 in some languages like C++ (.h and .cpp)
	+/
	ClassOutputFile[] classOutputFiles;
}



 
