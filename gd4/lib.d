module lib;

import gdnative_interface;

import std.stdio : writeln, writefln;

version(Windows)
{
	import core.sys.windows.dll : SimpleDllMain;
	mixin SimpleDllMain;
}

extern(C) void initializeLevel(void* userdata, GDNativeInitializationLevel level)
{
	writeln("Initializing level: ", level);
}
extern(C) void deinitializeLevel(void* userdata, GDNativeInitializationLevel level)
{
	writeln("Deinitializing level: ", level);
}

export extern(C) ubyte gd4_entry(const(GDNativeInterface)* p_interface,
	const GDNativeExtensionClassLibraryPtr p_library, GDNativeInitialization* r_initialization)
{
	r_initialization.initialize = &initializeLevel;
	r_initialization.deinitialize = &deinitializeLevel;
	r_initialization.minimum_initialization_level = GDNativeInitializationLevel.GDNATIVE_INITIALIZATION_SCENE;
	return 1;
}
