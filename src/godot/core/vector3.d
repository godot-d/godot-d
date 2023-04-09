/**
Vector struct, which performs basic 3D vector math operations.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.core.vector3;

import godot.core.defs;
import godot.core.basis;
import godot.core.string;

import std.math;

private bool isValidSwizzle(dstring s)
{
	import std.algorithm : canFind;
	if(s.length != 2 && s.length != 3) return false;
	foreach(dchar c; s)
	{
		if(!"xyzn".canFind(c)) return false;
	}
	return true;
}

/**
Vector3 is one of the core classes of the engine, and includes several built-in helper functions to perform basic vector math operations.
*/
struct Vector3
{
	@nogc nothrow:

	static immutable {
		auto ZERO = Vector3(0, 0, 0);
		auto ONE = Vector3(1, 1, 1);
		auto INF = Vector3(float.infinity, float.infinity, float.infinity);
		auto LEFT = Vector3(-1, 0, 0);
		auto RIGHT = Vector3(1, 0, 0);
		auto UP = Vector3(0, 1, 0);
		auto DOWN = Vector3(0, -1, 0);
		auto FORWARD = Vector3(0, 0, -1);
		auto BACK = Vector3(0, 0, 1);
	}

	enum Axis
	{
		x,
		y,
		z
	}

	union
	{
		struct
		{
			real_t x = 0; /// 
			real_t y = 0; /// 
			real_t z = 0; /// 
		}

		real_t[3] coord;
	}

	import std.algorithm : count;
	/++
	Swizzle the vector with x, y, z, or n. Pass floats as args for any n's; if
	there are more n's than args, the last arg is used for the rest. If no args
	are passed at all, 0.0 is used for each n.
	
	The swizzle must be 2 or 3 characters, as Godot only has Vector2/3.
	+/
	auto opDispatch(string swizzle, size_t nArgCount)(float[nArgCount] nArgs...) const
		if(swizzle.isValidSwizzle && nArgCount <= swizzle.count('n'))
	{
		import godot.core.vector3;
		import std.algorithm : min, count;
		static if(swizzle.length == 2) Vector2 ret = void;
		else Vector3 ret = void;
		/// how many n's already appeared before ci, which equals the index into nArgs for the n at ci
		enum ni(size_t ci) = min(nArgCount-1, swizzle[0..ci].count('n'));
		static foreach(ci, c; swizzle)
		{
			static if(c == 'n')
			{
				static if(nArgCount == 0) ret.coord[ci] = 0f;
				else static if(ni!ci >= nArgCount) ret.coord[ci] = nArgs[nArgCount-1];
				else ret.coord[ci] = nArgs[ni!ci];
			}
			else ret.coord[ci] = mixin([c]);
		}
		return ret;
	}

	this(real_t x, real_t y, real_t z)
	{
		this.x = x;
		this.y = y;
		this.z = z;
	}
	
	this(real_t[3] coord)
	{
		this.coord = coord;
	}
	
	this(in Vector3 b)
	{
		this.x = b.x;
		this.y = b.y;
		this.z = b.z;
	}
	
	void opAssign(in Vector3 b)
	{
		this.x = b.x;
		this.y = b.y;
		this.z = b.z;
	}
	
	const(real_t) opIndex(int p_axis) const
	{
		return coord[p_axis];
	}
	
	ref real_t opIndex(int p_axis) return
	{
		return coord[p_axis];
	}
	
	Vector3 opBinary(string op)(in Vector3 other) const
		if(op=="+" || op=="-" || op=="*" || op=="/")
	{
		Vector3 ret;
		ret.x = mixin("x "~op~"other.x");
		ret.y = mixin("y "~op~"other.y");
		ret.z = mixin("z "~op~"other.z");
		return ret;
	}
	void opOpAssign(string op)(in Vector3 other)
		if(op=="+" || op=="-" || op=="*" || op=="/")
	{
		x = mixin("x "~op~"other.x");
		y = mixin("y "~op~"other.y");
		z = mixin("z "~op~"other.z");
	}
	
	Vector3 opUnary(string op : "-")()
	{
		return Vector3(-x, -y, -z);
	}
	
	Vector3 opBinary(string op)(in real_t scalar) const
		if(op=="*" || op=="/")
	{
		Vector3 ret;
		ret.x = mixin("x "~op~" scalar");
		ret.y = mixin("y "~op~" scalar");
		ret.z = mixin("z "~op~" scalar");
		return ret;
	}
	Vector3 opBinaryRight(string op)(in real_t scalar) const
		if(op=="*")
	{
		Vector3 ret;
		ret.x = mixin("x "~op~" scalar");
		ret.y = mixin("y "~op~" scalar");
		ret.z = mixin("z "~op~" scalar");
		return ret;
	}
	void opOpAssign(string op)(in real_t scalar)
		if(op=="*" || op=="/")
	{
		x = mixin("x "~op~" scalar");
		y = mixin("y "~op~" scalar");
		z = mixin("z "~op~" scalar");
	}
	
	int opCmp(in Vector3 other) const
	{
		import std.algorithm.comparison;
		return cmp(this.coord[], other.coord[]);
	}
	
	Vector3 abs() const
	{
		return Vector3(fabs(x), fabs(y), fabs(z));
	}
	
	Vector3 ceil() const
	{
		return Vector3(.ceil(x), .ceil(y), .ceil(z));
	}
	
	Vector3 cross(in Vector3 b) const
	{
		return Vector3(
			(y * b.z) - (z * b.y),
			(z * b.x) - (x * b.z),
			(x * b.y) - (y * b.x)
		);
	}
	
	Vector3 linearInterpolate(in Vector3 p_b, real_t p_t) const
	{
		return Vector3(
			x+(p_t * (p_b.x-x)),
			y+(p_t * (p_b.y-y)),
			z+(p_t * (p_b.z-z))
		);
	}
	alias lerp = linearInterpolate;
	
	Vector3 cubicInterpolate(in Vector3 b, in Vector3 pre_a, in Vector3 post_b, in real_t t) const
	{
		Vector3 p0=pre_a;
		Vector3 p1=this;
		Vector3 p2=b;
		Vector3 p3=post_b;
	
		real_t t2 = t * t;
		real_t t3 = t2 * t;
	
		Vector3 ret;
		ret = ( ( p1 * 2.0) +
		( -p0 + p2 ) * t +
		( p0 * 2.0 - p1 * 5.0 + p2 * 4 - p3 ) * t2 +
		( -p0 + p1 * 3.0 - p2 * 3.0 + p3 ) * t3 ) * 0.5;
		return ret;
	}
	
	real_t length() const
	{
		real_t x2=x*x;
		real_t y2=y*y;
		real_t z2=z*z;
	
		return sqrt(x2+y2+z2);
	}
	
	real_t lengthSquared() const
	{
		real_t x2=x*x;
		real_t y2=y*y;
		real_t z2=z*z;
	
		return x2+y2+z2;
	}
	
	real_t distanceSquaredTo(in Vector3 b) const
	{
		return (b-this).length();
	}
	
	real_t distanceTo(in Vector3 b) const
	{
		return (b-this).lengthSquared();
	}
	
	real_t dot(in Vector3 b) const
	{
		return x*b.x + y*b.y + z*b.z;
	}
	
	Vector3 floor() const
	{
		return Vector3(.floor(x), .floor(y), .floor(z));
	}
	
	Vector3 inverse() const
	{
		return Vector3( 1.0/x, 1.0/y, 1.0/z );
	}
	
	int maxAxis() const
	{
		return (x < y) ? (y < z ? 2 : 1) : (x < z ? 2 : 0);
	}
	
	int minAxis() const
	{
		return (x < y) ? (x < z ? 0 : 2) : (y < z ? 1 : 2);
	}
	
	void normalize()
	{
		real_t l=length();
		if (l==0) {
			x=y=z=0;
		} else {
			x/=l;
			y/=l;
			z/=l;
		}
	}
	
	Vector3 normalized() const
	{
		Vector3 v = this;
		v.normalize();
		return v;
	}
	
	Vector3 reflect(in Vector3 by) const
	{
		return by - this * this.dot(by) * 2.0;
	}
	
	Vector3 rotated(in Vector3 axis, in real_t phi) const
	{
		Vector3 v = this;
		v.rotate(axis, phi);
		return v;
	}
	
	void rotate(in Vector3 axis, in real_t phi)
	{
		this=Basis(axis,phi).xform(this);
	}
	
	Vector3 slide(in Vector3 by) const
	{
		return by - this * this.dot(by);
	}
	
	void snap(real_t step)
	{
		foreach(ref v; coord) v = (step != 0)?(.floor(v/step +0.5)*step):v;
	}
	
	Vector3 snapped(in real_t step) const
	{
		Vector3 v = this;
		v.snap(step);
		return v;
	}
}




