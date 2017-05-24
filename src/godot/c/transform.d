module godot.c.transform;

@nogc nothrow:
extern(C):

struct godot_transform {
	//ubyte[48] _dont_touch_that;
	ulong[6] _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

