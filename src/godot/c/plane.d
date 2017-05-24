module godot.c.plane;

@nogc nothrow:
extern(C):

struct godot_plane {
	//ubyte[16] _dont_touch_that;
	ulong[2] _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

