module godot.core.transform;

import godot.core.defs;
import godot.core.vector3;
import godot.core.quat;
import godot.core.basis;
import godot.core.rect3;
import godot.core.plane;

struct Transform
{
	Basis basis;
	Vector3 origin;
	
	this(real_t xx, real_t xy, real_t xz, real_t yx, real_t yy, real_t yz,
		 real_t zx, real_t zy, real_t zz,real_t tx, real_t ty, real_t tz) {
		set(xx, xy, xz, yx, yy, yz, zx, zy, zz,tx, ty, tz);
	}
	
	this(in Basis basis, in Vector3 origin) { this.basis = basis; this.origin = origin; }
	
	
	Transform inverse_xform(in Transform t) const
	{
		Vector3 v = t.origin - origin;
		return Transform(basis.transpose_xform(t.basis),
			basis.xform(v));
	}
	
	void set(real_t xx, real_t xy, real_t xz, real_t yx, real_t yy, real_t yz, real_t zx, real_t zy, real_t zz,real_t tx, real_t ty, real_t tz)
	{
		basis.elements[0][0]=xx;
		basis.elements[0][1]=xy;
		basis.elements[0][2]=xz;
		basis.elements[1][0]=yx;
		basis.elements[1][1]=yy;
		basis.elements[1][2]=yz;
		basis.elements[2][0]=zx;
		basis.elements[2][1]=zy;
		basis.elements[2][2]=zz;
		origin.x=tx;
		origin.y=ty;
		origin.z=tz;
	}
	
	
	
	Vector3 xform(in Vector3 p_vector) const
	{
		return Vector3(
			basis[0].dot(p_vector)+origin.x,
			basis[1].dot(p_vector)+origin.y,
			basis[2].dot(p_vector)+origin.z
		);
	}
	Vector3 xform_inv(in Vector3 p_vector) const
	{
		Vector3 v = p_vector - origin;
		
		return Vector3(
			(basis.elements[0][0]*v.x ) + ( basis.elements[1][0]*v.y ) + ( basis.elements[2][0]*v.z ),
			(basis.elements[0][1]*v.x ) + ( basis.elements[1][1]*v.y ) + ( basis.elements[2][1]*v.z ),
			(basis.elements[0][2]*v.x ) + ( basis.elements[1][2]*v.y ) + ( basis.elements[2][2]*v.z )
		);
	}
	
	Plane xform(in Plane p_plane) const
	{
		Vector3 point=p_plane.normal*p_plane.d;
		Vector3 point_dir=point+p_plane.normal;
		point=xform(point);
		point_dir=xform(point_dir);
	
		Vector3 normal=point_dir-point;
		normal.normalize();
		real_t d=normal.dot(point);
	
		return Plane(normal,d);
	
	}
	Plane xform_inv(in Plane p_plane) const
	{
		Vector3 point=p_plane.normal*p_plane.d;
		Vector3 point_dir=point+p_plane.normal;
		xform_inv(point);
		xform_inv(point_dir);
	
		Vector3 normal=point_dir-point;
		normal.normalize();
		real_t d=normal.dot(point);
	
		return Plane(normal,d);
	
	}
	
	Rect3 xform(in Rect3 p_aabb) const
	{
		/* define vertices */
		Vector3 x=basis.get_axis(0)*p_aabb.size.x;
		Vector3 y=basis.get_axis(1)*p_aabb.size.y;
		Vector3 z=basis.get_axis(2)*p_aabb.size.z;
		Vector3 pos = xform( p_aabb.pos );
		//could be even further optimized
		Rect3 new_aabb;
		new_aabb.pos=pos;
		new_aabb.expand_to( pos+x );
		new_aabb.expand_to( pos+y );
		new_aabb.expand_to( pos+z );
		new_aabb.expand_to( pos+x+y );
		new_aabb.expand_to( pos+x+z );
		new_aabb.expand_to( pos+y+z );
		new_aabb.expand_to( pos+x+y+z );
		return new_aabb;
	}
	Rect3 xform_inv(in Rect3 p_aabb) const
	{
		/* define vertices */
		Vector3[8] vertices=[
				Vector3(p_aabb.pos.x+p_aabb.size.x,	p_aabb.pos.y+p_aabb.size.y,	p_aabb.pos.z+p_aabb.size.z),
				Vector3(p_aabb.pos.x+p_aabb.size.x,	p_aabb.pos.y+p_aabb.size.y,	p_aabb.pos.z),
				Vector3(p_aabb.pos.x+p_aabb.size.x,	p_aabb.pos.y,		p_aabb.pos.z+p_aabb.size.z),
				Vector3(p_aabb.pos.x+p_aabb.size.x,	p_aabb.pos.y,		p_aabb.pos.z),
				Vector3(p_aabb.pos.x,	p_aabb.pos.y+p_aabb.size.y,	p_aabb.pos.z+p_aabb.size.z),
				Vector3(p_aabb.pos.x,	p_aabb.pos.y+p_aabb.size.y,	p_aabb.pos.z),
				Vector3(p_aabb.pos.x,	p_aabb.pos.y,		p_aabb.pos.z+p_aabb.size.z),
				Vector3(p_aabb.pos.x,	p_aabb.pos.y,		p_aabb.pos.z)
		];
		Rect3 ret;
		ret.pos=xform_inv(vertices[0]);
		for(int i=1;i<8;i++)
		{
			ret.expand_to( xform_inv(vertices[i]) );
		}
		return ret;
	
	}
	
	void affine_invert()
	{
		basis.invert();
		origin = basis.xform(-origin);
	}
	
	Transform affine_inverse() const
	{
		Transform ret=this;
		ret.affine_invert();
		return ret;
	
	}
	
	
	void invert()
	{
		basis.transpose();
		origin = basis.xform(-origin);
	}
	
	Transform inverse() const
	{
		// FIXME: this function assumes the basis is a rotation matrix, with no scaling.
		// affine_inverse can handle matrices with scaling, so GDScript should eventually use that.
		Transform ret=this;
		ret.invert();
		return ret;
	}
	
	
	void rotate(in Vector3 p_axis,real_t p_phi)
	{
		this = rotated(p_axis, p_phi);
	}
	
	Transform rotated(in Vector3 p_axis,real_t p_phi) const
	{
		return Transform(Basis( p_axis, p_phi ), Vector3()) * (this);
	}
	
	void rotate_basis(in Vector3 p_axis,real_t p_phi)
	{
		basis.rotate(p_axis,p_phi);
	}
	
	Transform looking_at( in Vector3 p_target, in Vector3 p_up ) const
	{
		Transform t = this;
		t.set_look_at(origin,p_target,p_up);
		return t;
	}
	
	void set_look_at( in Vector3 p_eye, in Vector3 p_target, in Vector3 p_up )
	{
		// Reference: MESA source code
		Vector3 v_x, v_y, v_z;
		/* Make rotation matrix */
		
		/* Z vector */
		v_z = p_eye - p_target;
		
		v_z.normalize();
		
		v_y = p_up;
		
		
		v_x=v_y.cross(v_z);
		
		/* Recompute Y = Z cross X */
		v_y=v_z.cross(v_x);
		
		v_x.normalize();
		v_y.normalize();
		
		basis.set_axis(0,v_x);
		basis.set_axis(1,v_y);
		basis.set_axis(2,v_z);
		origin=p_eye;
	}
	
	Transform interpolate_with(in Transform p_transform, real_t p_c) const
	{
		/* not sure if very "efficient" but good enough? */
		Vector3 src_scale = basis.get_scale();
		Quat src_rot = basis.quat;
		Vector3 src_loc = origin;
		
		Vector3 dst_scale = p_transform.basis.get_scale();
		Quat dst_rot = p_transform.basis.quat;
		Vector3 dst_loc = p_transform.origin;
		
		Transform dst;
		dst.basis = Basis(src_rot.slerp(dst_rot,p_c));
		dst.basis.scale(src_scale.linear_interpolate(dst_scale,p_c));
		dst.origin=src_loc.linear_interpolate(dst_loc,p_c);
		
		return dst;
	}
	
	void scale(in Vector3 p_scale)
	{
		basis.scale(p_scale);
		origin*=p_scale;
	}
	
	Transform scaled(in Vector3 p_scale) const
	{
		Transform t = this;
		t.scale(p_scale);
		return t;
	}
	
	void scale_basis(in Vector3 p_scale)
	{
		basis.scale(p_scale);
	}
	
	void translate(real_t p_tx, real_t p_ty, real_t p_tz)
	{
		translate( Vector3(p_tx,p_ty,p_tz) );
	}
	void translate(in Vector3 p_translation)
	{
		for( int i = 0; i < 3; i++ )
		{
			origin[i] += basis[i].dot(p_translation);
		}
	}
	
	Transform translated(in Vector3 p_translation) const
	{
		Transform t=this;
		t.translate(p_translation);
		return t;
	}
	
	void orthonormalize()
	{
		basis.orthonormalize();
	}
	
	Transform orthonormalized() const
	{
		Transform _copy = this;
		_copy.orthonormalize();
		return _copy;
	}
	
	void opOpAssign(string op : "*")(in Transform p_transform)
	{
		origin=xform(p_transform.origin);
		basis*=p_transform.basis;
	}
	
	Transform opBinary(string op : "*")(in Transform p_transform) const
	{
		Transform t=this;
		t*=p_transform;
		return t;
	}
}

