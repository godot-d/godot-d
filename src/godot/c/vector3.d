module godot.c.vector3;

@nogc nothrow:
extern(C):

struct godot_vector3 {
	//ubyte[12] _dont_touch_that;
	uint[3] _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

