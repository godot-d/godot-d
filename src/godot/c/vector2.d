module godot.c.vector2;

@nogc nothrow:
extern(C):

struct godot_vector2 {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

