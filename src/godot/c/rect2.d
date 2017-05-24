module godot.c.rect2;

@nogc nothrow:
extern(C):

struct godot_rect2 {
	//ubyte[16] _dont_touch_that;
	ulong[2] _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

