/// Aliases used by other core types
module godot.core.defs;

import godot.c;

alias Error = godot_error;

alias real_t = float;


enum real_t CMP_EPSILON = 0.00001;
enum real_t CMP_EPSILON2 = (CMP_EPSILON*CMP_EPSILON);

enum real_t _PLANE_EQ_DOT_EPSILON = 0.999;
enum real_t _PLANE_EQ_D_EPSILON = 0.0001;


