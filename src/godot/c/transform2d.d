module godot.c.transform2d;

@nogc nothrow:
extern(C):

struct godot_transform2d {
	//ubyte[24] _dont_touch_that;
	ulong[3] _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

