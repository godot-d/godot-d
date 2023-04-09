/**

Copyright:
Copyright (c) 2007-2021 Juan Linietsky, Ariel Manzur.
Copyright (c) 2014-2021 Godot Engine contributors (cf. AUTHORS.md).
Copyright (c) 2017-2023 Godot-D contributors

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.core.math;

@nogc:

// NOTE: These functions are copied from Godot and MIT licensed. Ported from C++ to D.
// https://github.com/godotengine/godot/blob/2abe996414b8b551e69e29461de3ff1bcaf5a28f/core/math/math_funcs.h

float deg2rad(float degrees) {
	import std.math : PI;
	float radians = (degrees * PI) / 180.0f;
	return radians;
}

float rad2deg(float radians) {
	import std.math : PI;
	float degrees = radians * (180.0f / PI);
	return degrees;
}

float lerp(float p_from, float p_to, float p_weight) {
	return p_from + (p_to - p_from) * p_weight;
}

float lerp_angle(float p_from, float p_to, float p_weight) {
	import std.math : fmod, PI;
	float difference = fmod(p_to - p_from, cast(float)(2.0 * PI));
	float distance = fmod(2.0f * difference, cast(float)(2.0 * PI)) - difference;
	return p_from + distance * p_weight;
}

float inverse_lerp(float p_from, float p_to, float p_value) {
	return (p_value - p_from) / (p_to - p_from);
}

float range_lerp(float p_value, float p_istart, float p_istop, float p_ostart, float p_ostop) {
	return lerp(p_ostart, p_ostop, inverse_lerp(p_istart, p_istop, p_value));
}
