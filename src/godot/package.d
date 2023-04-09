/++

+/
module godot;

public import godot.core;
public import godot.d;
public import godot.c.api : GDNativeVersion;

public static immutable {
	import godot.c.core : godot_error;

	int OK = godot_error.GODOT_OK;
	int ERR_FILE_EOF = godot_error.GODOT_ERR_FILE_EOF;
}
