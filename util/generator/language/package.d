module language;

import api.util;
import api.classes, api.methods;

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
		/++
		Returns: An array containing:
			[0] the filename
			[1] the contents to put in the file
		+/
		string[2] function(GodotClass c) generator;
	}
	
	/++
	Outputs per Godot class. Each one is written *unless* return value is null.
	There could be more than 1 in some languages like C++ (.h and .cpp)
	+/
	ClassOutputFile[] classOutputFiles;
}



 
