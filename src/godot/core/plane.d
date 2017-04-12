module godot.core.plane;

import godot.core.defs;
import godot.core.vector3;

import std.math;

enum ClockDirection
{
	clockwise,
	counterClockwise,
	
	cw = clockwise,
	ccw = counterClockwise
}

struct Plane
{
	Vector3 normal = Vector3(0,0,0);
	real_t d = 0;
	
	Vector3 center() const
	{
		return normal*d;
	}
	
	Plane opUnary(string op : "-")() const
	{
		return Plane(-normal, -d);
	}
	
	Vector3 project(in Vector3 p_point) const
	{
		return p_point - normal * distance_to(p_point);
	}
	
	
	void normalize()
	{
		real_t l = normal.length();
		if (l==0)
		{
			this=Plane(Vector3(0,0,0),0);
			return;
		}
		normal/=l;
		d/=l;
	}
	
	Plane normalized() const
	{
		Plane p = this;
		p.normalize();
		return p;
	}
	
	Vector3 get_any_point() const
	{
		return normal*d;
	}
	
	Vector3 get_any_perpendicular_normal() const
	{
		enum Vector3 p1 = Vector3(1,0,0);
		enum Vector3 p2 = Vector3(0,1,0);
		Vector3 p;
	
		if (fabs(normal.dot(p1)) > 0.99) // if too similar to p1
			p=p2; // use p2
		else
			p=p1; // use p1
	
		p-=normal * normal.dot(p);
		p.normalize();
	
		return p;
	}
	
	
	/* intersections */
	
	bool intersect_3(in Plane p_plane1, in Plane p_plane2, Vector3* r_result = null) const
	{
		const Plane p_plane0 = this;
		Vector3 normal0=p_plane0.normal;
		Vector3 normal1=p_plane1.normal;
		Vector3 normal2=p_plane2.normal;
		
		real_t denom=normal0.cross(normal1).dot(normal2);
		
		if (fabs(denom)<=CMP_EPSILON)
			return false;
		
		if (r_result)
		{
			*r_result = ( (normal1.cross(normal2) * p_plane0.d) +
			              (normal2.cross(normal0) * p_plane1.d) +
			              (normal0.cross(normal1) * p_plane2.d) )/denom;
		}
		return true;
	}
	
	
	bool intersects_ray(in Vector3 p_from, in Vector3 p_dir, Vector3* p_intersection = null)  const
	{
		Vector3 segment=p_dir;
		real_t den=normal.dot( segment );
		
		//printf("den is %i\n",den);
		if (fabs(den)<=CMP_EPSILON)
		{
			return false;
		}
		
		real_t dist=(normal.dot( p_from ) - d) / den;
		//printf("dist is %i\n",dist);
		
		if (dist>CMP_EPSILON)
		{ //this is a ray, before the emiting pos (p_from) doesnt exist
			return false;
		}
		
		dist=-dist;
		if(p_intersection) *p_intersection = p_from + segment * dist;
		
		return true;
	}
	
	bool intersects_segment(in Vector3 p_begin, in Vector3 p_end, Vector3* p_intersection) const
	{
		Vector3 segment= p_begin - p_end;
		real_t den=normal.dot( segment );
		
		//printf("den is %i\n",den);
		if (fabs(den)<=CMP_EPSILON) return false;
		
		real_t dist=(normal.dot( p_begin ) - d) / den;
		//printf("dist is %i\n",dist);
		
		if (dist<-CMP_EPSILON || dist > (1.0 +CMP_EPSILON)) return false;
		
		dist=-dist;
		if(p_intersection) *p_intersection = p_begin + segment * dist;
		
		return true;
	}
	
	/* misc */
	
	bool is_almost_like(in Plane p_plane) const
	{
		return (normal.dot( p_plane.normal ) > _PLANE_EQ_DOT_EPSILON && fabs(d-p_plane.d) < _PLANE_EQ_D_EPSILON);
	}
	
	
	/+String opCast(T : String)() const
	{
		// return normal.operator String() + ", " + rtos(d);
		return String(); // @Todo
	}+/
	
	
	
	bool is_point_over(in Vector3 p_point) const
	{
		return (normal.dot(p_point) > d);
	}
	
	real_t distance_to(in Vector3 p_point) const
	{
		return (normal.dot(p_point)-d);
	}
	
	bool has_point(in Vector3 p_point,real_t _epsilon = CMP_EPSILON) const
	{
		real_t dist=normal.dot(p_point) - d;
		dist=fabs(dist);
		return ( dist <= _epsilon);
	
	}
	
	this(in Vector3 p_normal, real_t p_d)
	{
		normal=p_normal;
		d=p_d;
	}
	
	this(in Vector3 p_point, in Vector3 p_normal)
	{
		normal=p_normal;
		d=p_normal.dot(p_point);
	}
	
	this(in Vector3 p_point1, in Vector3 p_point2, in Vector3 p_point3,ClockDirection p_dir = ClockDirection.ccw)
	{
		if (p_dir == ClockDirection.clockwise)
			normal=(p_point1-p_point3).cross(p_point1-p_point2);
		else
			normal=(p_point1-p_point2).cross(p_point1-p_point3);
		normal.normalize();
		d = normal.dot(p_point1);
	}
}

