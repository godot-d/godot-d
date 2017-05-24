module godot.c.quat;

@nogc nothrow:
extern(C):

struct godot_quat {
	//ubyte[16] _dont_touch_that;
	ulong[2] _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

