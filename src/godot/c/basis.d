module godot.c.basis;

@nogc nothrow:
extern(C):

struct godot_basis {
	//ubyte[36] _dont_touch_that;
	uint[9] _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

