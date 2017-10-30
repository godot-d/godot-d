module godot.core.rect2;

import godot.core.defs;
import godot.core.vector2, godot.core.transform2d;

import std.algorithm.comparison;
import std.algorithm.mutation : swap;

struct Rect2
{
	@nogc nothrow:
	
	Vector2 pos;
	Vector2 size;
	
	this( real_t p_x, real_t p_y, real_t p_width, real_t p_height)
	{
		pos=Vector2(p_x,p_y);
		size=Vector2(p_width, p_height);
	}
	
	real_t getArea() const { return size.width*size.height; }
	
	bool intersects(in Rect2 p_rect) const
	{
		if ( pos.x >= (p_rect.pos.x + p_rect.size.width) )
			return false;
		if ( (pos.x+size.width) <= p_rect.pos.x  )
			return false;
		if ( pos.y >= (p_rect.pos.y + p_rect.size.height) )
			return false;
		if ( (pos.y+size.height) <= p_rect.pos.y  )
			return false;
		
		return true;
	}
	
	bool encloses(in Rect2 p_rect) const
	{
		return 	(p_rect.pos.x>=pos.x) && (p_rect.pos.y>=pos.y) &&
			((p_rect.pos.x+p_rect.size.x)<(pos.x+size.x)) &&
			((p_rect.pos.y+p_rect.size.y)<(pos.y+size.y));
	}
	bool hasNoArea() const
	{
		return (size.x<=0 || size.y<=0);
	}
	
	bool hasPoint(in Vector2 p_point) const
	{
		if (p_point.x < pos.x)
			return false;
		if (p_point.y < pos.y)
			return false;
		
		if (p_point.x >= (pos.x+size.x) )
			return false;
		if (p_point.y >= (pos.y+size.y) )
			return false;
		
		return true;
	}
	
	Rect2 grow(real_t p_by) const
	{
		Rect2 g=this;
		g.pos.x-=p_by;
		g.pos.y-=p_by;
		g.size.width+=p_by*2;
		g.size.height+=p_by*2;
		return g;
	}

	Rect2 expand(in Vector2 p_vector) const
	{
		Rect2 r = this;
		r.expandTo(p_vector);
		return r;
	}

	void expandTo(in Vector2 p_vector)
	{
		Vector2 begin=pos;
		Vector2 end=pos+size;
		
		if (p_vector.x<begin.x)
			begin.x=p_vector.x;
		if (p_vector.y<begin.y)
			begin.y=p_vector.y;
		
		if (p_vector.x>end.x)
			end.x=p_vector.x;
		if (p_vector.y>end.y)
			end.y=p_vector.y;
		
		pos=begin;
		size=end-begin;
	}
	
	
	real_t distanceTo(in Vector2 p_point) const
	{
		real_t dist = 1e20;
		
		if (p_point.x < pos.x)
		{
			dist=min(dist,pos.x-p_point.x);
		}
		if (p_point.y < pos.y)
		{
			dist=min(dist,pos.y-p_point.y);
		}
		if (p_point.x >= (pos.x+size.x) )
		{
			dist=min(p_point.x-(pos.x+size.x),dist);
		}
		if (p_point.y >= (pos.y+size.y) )
	    {
		    dist=min(p_point.y-(pos.y+size.y),dist);
		}
		
		if (dist==1e20)
			return 0;
		else
			return dist;
	}
	
	Rect2 clip(in Rect2 p_rect) const
	{
	
		Rect2 new_rect=p_rect;
		
		if (!intersects( new_rect ))
			return Rect2();
		
		new_rect.pos.x = max( p_rect.pos.x , pos.x );
		new_rect.pos.y = max( p_rect.pos.y , pos.y );
		
		Vector2 p_rect_end=p_rect.pos+p_rect.size;
		Vector2 end=pos+size;
		
		new_rect.size.x=min(p_rect_end.x,end.x) - new_rect.pos.x;
		new_rect.size.y=min(p_rect_end.y,end.y) - new_rect.pos.y;
		
		return new_rect;
	}
	
	Rect2 merge(in Rect2 p_rect) const
	{
		Rect2 new_rect;
		
		new_rect.pos.x=min( p_rect.pos.x , pos.x );
		new_rect.pos.y=min( p_rect.pos.y , pos.y );
		
		
		new_rect.size.x = max( p_rect.pos.x+p_rect.size.x , pos.x+size.x );
		new_rect.size.y = max( p_rect.pos.y+p_rect.size.y , pos.y+size.y );
		
		new_rect.size = new_rect.size - new_rect.pos; //make relative again
		
		return new_rect;
	}
	
	
	
	bool intersectsSegment(in Vector2 p_from, in Vector2 p_to, Vector2* r_pos,Vector2* r_normal) const
	{
		real_t min=0,max=1;
		int axis=0;
		real_t sign=0;
	
		for(int i=0;i<2;i++)
		{
			real_t seg_from=p_from[i];
			real_t seg_to=p_to[i];
			real_t box_begin=pos[i];
			real_t box_end=box_begin+size[i];
			real_t cmin,cmax;
			real_t csign;
	
			if (seg_from < seg_to)
			{
				if (seg_from > box_end || seg_to < box_begin)
					return false;
				real_t length=seg_to-seg_from;
				cmin = (seg_from < box_begin)?((box_begin - seg_from)/length):0;
				cmax = (seg_to > box_end)?((box_end - seg_from)/length):1;
				csign=-1.0;
	
			}
			else
			{
				if (seg_to > box_end || seg_from < box_begin)
					return false;
				real_t length=seg_to-seg_from;
				cmin = (seg_from > box_end)?(box_end - seg_from)/length:0;
				cmax = (seg_to < box_begin)?(box_begin - seg_from)/length:1;
				csign=1.0;
			}
	
			if (cmin > min)
			{
				min = cmin;
				axis=i;
				sign=csign;
			}
			if (cmax < max)
				max = cmax;
			if (max < min)
				return false;
		}
	
	
		Vector2 rel=p_to-p_from;
	
		if (r_normal)
		{
			Vector2 normal;
			normal[axis]=sign;
			*r_normal=normal;
		}
	
		if (r_pos)
			*r_pos=p_from+rel*min;
	
		return true;
	}
	
	
	bool intersectsTransformed(in Transform2D p_xform, in Rect2 p_rect) const
	{
		//SAT intersection between local and transformed rect2
	
		Vector2[4] xf_points=[
			p_xform.xform(p_rect.pos),
			p_xform.xform(Vector2(p_rect.pos.x+p_rect.size.x,p_rect.pos.y)),
			p_xform.xform(Vector2(p_rect.pos.x,p_rect.pos.y+p_rect.size.y)),
			p_xform.xform(Vector2(p_rect.pos.x+p_rect.size.x,p_rect.pos.y+p_rect.size.y)),
		];
	
		real_t low_limit;
	
		//base rect2 first (faster)
	
		if (xf_points[0].y>pos.y)
			goto next1;
		if (xf_points[1].y>pos.y)
			goto next1;
		if (xf_points[2].y>pos.y)
			goto next1;
		if (xf_points[3].y>pos.y)
			goto next1;
	
		return false;
	
		next1:
	
		low_limit=pos.y+size.y;
	
		if (xf_points[0].y<low_limit)
			goto next2;
		if (xf_points[1].y<low_limit)
			goto next2;
		if (xf_points[2].y<low_limit)
			goto next2;
		if (xf_points[3].y<low_limit)
			goto next2;
	
		return false;
	
		next2:
	
		if (xf_points[0].x>pos.x)
			goto next3;
		if (xf_points[1].x>pos.x)
			goto next3;
		if (xf_points[2].x>pos.x)
			goto next3;
		if (xf_points[3].x>pos.x)
			goto next3;
	
		return false;
	
		next3:
	
		low_limit=pos.x+size.x;
	
		if (xf_points[0].x<low_limit)
			goto next4;
		if (xf_points[1].x<low_limit)
			goto next4;
		if (xf_points[2].x<low_limit)
			goto next4;
		if (xf_points[3].x<low_limit)
			goto next4;
	
		return false;
	
		next4:
	
		Vector2[4] xf_points2=[
			pos,
			Vector2(pos.x+size.x,pos.y),
			Vector2(pos.x,pos.y+size.y),
			Vector2(pos.x+size.x,pos.y+size.y),
		];
	
		real_t maxa=p_xform.elements[0].dot(xf_points2[0]);
		real_t mina=maxa;
	
		real_t dp = p_xform.elements[0].dot(xf_points2[1]);
		maxa=max(dp,maxa);
		mina=min(dp,mina);
	
		dp = p_xform.elements[0].dot(xf_points2[2]);
		maxa=max(dp,maxa);
		mina=min(dp,mina);
	
		dp = p_xform.elements[0].dot(xf_points2[3]);
		maxa=max(dp,maxa);
		mina=min(dp,mina);
	
		real_t maxb=p_xform.elements[0].dot(xf_points[0]);
		real_t minb=maxb;
	
		dp = p_xform.elements[0].dot(xf_points[1]);
		maxb=max(dp,maxb);
		minb=min(dp,minb);
	
		dp = p_xform.elements[0].dot(xf_points[2]);
		maxb=max(dp,maxb);
		minb=min(dp,minb);
	
		dp = p_xform.elements[0].dot(xf_points[3]);
		maxb=max(dp,maxb);
		minb=min(dp,minb);
	
	
		if ( mina > maxb )
			return false;
		if ( minb > maxa  )
			return false;
	
		maxa=p_xform.elements[1].dot(xf_points2[0]);
		mina=maxa;
	
		dp = p_xform.elements[1].dot(xf_points2[1]);
		maxa=max(dp,maxa);
		mina=min(dp,mina);
	
		dp = p_xform.elements[1].dot(xf_points2[2]);
		maxa=max(dp,maxa);
		mina=min(dp,mina);
	
		dp = p_xform.elements[1].dot(xf_points2[3]);
		maxa=max(dp,maxa);
		mina=min(dp,mina);
	
		maxb=p_xform.elements[1].dot(xf_points[0]);
		minb=maxb;
	
		dp = p_xform.elements[1].dot(xf_points[1]);
		maxb=max(dp,maxb);
		minb=min(dp,minb);
	
		dp = p_xform.elements[1].dot(xf_points[2]);
		maxb=max(dp,maxb);
		minb=min(dp,minb);
	
		dp = p_xform.elements[1].dot(xf_points[3]);
		maxb=max(dp,maxb);
		minb=min(dp,minb);
	
	
		if ( mina > maxb )
			return false;
		if ( minb > maxa  )
			return false;
	
	
		return true;
	
	}
}

