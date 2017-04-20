module godot.core.color;

import godot.core.string;

import std.math;
import std.algorithm.comparison;
import core.stdc.stddef : wchar_t;

struct Color
{
	union
	{
		struct
		{
			float r = 0f;
			float g = 0f;
			float b = 0f;
			float a = 1f;
		}
		float[4] components;
	}
	
	this(float r, float g, float b, float a = 1f)
	{
		this.r = r;
		this.g = g;
		this.b = b;
		this.a = a;
	}
	
	static float _parse_col(in string p_str, int p_ofs)
	{
		int ig=0;
	
		for(int i=0;i<2;i++)
		{
			int c= cast(int) cast(wchar_t) p_str[i+p_ofs];
			int v=0;
	
			if (c>='0' && c<='9') {
				v=c-'0';
			} else if (c>='a' && c<='f') {
				v=c-'a';
				v+=10;
			} else if (c>='A' && c<='F') {
				v=c-'A';
				v+=10;
			} else {
				return -1;
			}
	
			if (i==0)
				ig+=v*16;
			else
				ig+=v;
		}
	
		return ig;
	
	}
	
	uint to_32() const
	{
	
		uint c=cast(ubyte)(a*255);
		c<<=8;
		c|=cast(ubyte)(r*255);
		c<<=8;
		c|=cast(ubyte)(g*255);
		c<<=8;
		c|=cast(ubyte)(b*255);
	
		return c;
	}
	
	uint to_ARGB32() const
	{
		uint c=cast(ubyte)(a*255);
		c<<=8;
		c|=cast(ubyte)(r*255);
		c<<=8;
		c|=cast(ubyte)(g*255);
		c<<=8;
		c|=cast(ubyte)(b*255);
	
		return c;
	}
	
	float gray() const
	{
		return (r+g+b)/3.0;
	}
	
	float get_h() const
	{
	
		float minv = min( r, g );
		minv = min( minv, b );
		float maxv = max( r, g );
		maxv = max( maxv, b );
	
		float delta = maxv - minv;
	
		if( delta == 0 )
			return 0;
	
		float h;
		if( r == maxv )
			h = ( g - b ) / delta;		// between yellow & magenta
		else if( g == maxv )
			h = 2 + ( b - r ) / delta;	// between cyan & yellow
		else
			h = 4 + ( r - g ) / delta;	// between magenta & cyan
	
		h/=6.0;
		if (h<0)
			h+=1.0;
	
		return h;
	}
	
	float get_s() const
	{
		float minv = min( r, g );
		minv = min( minv, b );
		float maxv = max( r, g );
		maxv = max( maxv, b );
		float delta = maxv - minv;
		return (maxv!=0) ? (delta / maxv) : 0;
	
	}
	
	float get_v() const
	{
		float maxv = max( r, g );
		maxv = max( maxv, b );
		return maxv;
	}
	
	void set_hsv(float p_h, float p_s, float p_v, float p_alpha)
	{
		int i;
		float f, p, q, t;
		a=p_alpha;
	
		if( p_s == 0 )
		{
			// acp_hromatic (grey)
			r = g = b = p_v;
			return;
		}
	
		p_h *=6.0;
		p_h = fmod(p_h,6);
		i = cast(int)floor( p_h );
	
		f = p_h - i;
		p = p_v * ( 1 - p_s );
		q = p_v * ( 1 - p_s * f );
		t = p_v * ( 1 - p_s * ( 1 - f ) );
	
		switch( i ) {
			case 0: // Red is the dominant color
				r = p_v;
				g = t;
				b = p;
				break;
			case 1: // Green is the dominant color
				r = q;
				g = p_v;
				b = p;
				break;
			case 2:
				r = p;
				g = p_v;
				b = t;
				break;
			case 3: // Blue is the dominant color
				r = p;
				g = q;
				b = p_v;
				break;
			case 4:
				r = t;
				g = p;
				b = p_v;
				break;
			default: // (5) Red is the dominant color
				r = p_v;
				g = p;
				b = q;
				break;
		}
	}
	
	void invert()
	{
		r=1.0-r;
		g=1.0-g;
		b=1.0-b;
	}
	
	void contrast()
	{
		r=fmod(r+0.5,1.0);
		g=fmod(g+0.5,1.0);
		b=fmod(b+0.5,1.0);
	}
	Color inverted() const
	{
		Color c=this;
		c.invert();
		return c;
	}
	Color contrasted() const
	{
		Color c=this;
		c.contrast();
		return c;
	}
	
	Color linear_interpolate(in Color p_b, float p_t) const {
	
		Color res=this;
	
		res.r+= (p_t * (p_b.r-r));
		res.g+= (p_t * (p_b.g-g));
		res.b+= (p_t * (p_b.b-b));
		res.a+= (p_t * (p_b.a-a));
	
		return res;
	}
	
	Color blend(in Color p_over) const {
	
	
		Color res;
		float sa = 1.0 - p_over.a;
		res.a = a*sa+p_over.a;
		if (res.a==0)
		{
			return Color(0,0,0,0);
		}
		else
		{
			res.r = (r*a*sa + p_over.r * p_over.a)/res.a;
			res.g = (g*a*sa + p_over.g * p_over.a)/res.a;
			res.b = (b*a*sa + p_over.b * p_over.a)/res.a;
		}
		return res;
	}
	
	Color to_linear() const
	{
		return Color(
			r<0.04045 ? r * (1.0 / 12.92) : pow((r + 0.055) * (1.0 / (1 + 0.055)), 2.4),
			g<0.04045 ? g * (1.0 / 12.92) : pow((g + 0.055) * (1.0 / (1 + 0.055)), 2.4),
			b<0.04045 ? b * (1.0 / 12.92) : pow((b + 0.055) * (1.0 / (1 + 0.055)), 2.4),
			a
		);
	}
	
	Color hex(uint p_hex)
	{
		float a = (p_hex&0xFF)/255.0;
		p_hex>>=8;
		float b = (p_hex&0xFF)/255.0;
		p_hex>>=8;
		float g = (p_hex&0xFF)/255.0;
		p_hex>>=8;
		float r = (p_hex&0xFF)/255.0;
	
		return Color(r,g,b,a);
	}
	
	/+Color html(in ref String color)
	{
		if (color.length()==0)
			return Color();
		if (color[0]=='#')
			color=color.substr(1,color.length()-1);
	
		bool alpha=false;
	
		if (color.length()==8) {
			alpha=true;
		} else if (color.length()==6) {
			alpha=false;
		} else {
			ERR_PRINT(String("Invalid Color Code: ") + p_color);
			ERR_FAIL_V(Color());
		}
	
		int a=255;
		if (alpha) {
			a=_parse_col(color,0);
			if (a<0) {
				ERR_PRINT("Invalid Color Code: "+p_color);
				ERR_FAIL_V(Color());
			}
		}
	
		int from=alpha?2:0;
	
		int r=_parse_col(color,from+0);
		if (r<0) {
			ERR_PRINT("Invalid Color Code: "+p_color);
			ERR_FAIL_V(Color());
		}
		int g=_parse_col(color,from+2);
		if (g<0) {
			ERR_PRINT("Invalid Color Code: "+p_color);
			ERR_FAIL_V(Color());
		}
		int b=_parse_col(color,from+4);
		if (b<0) {
			ERR_PRINT("Invalid Color Code: "+p_color);
			ERR_FAIL_V(Color());
		}
	
		return Color(r/255.0,g/255.0,b/255.0,a/255.0);
	}
	
	bool html_is_valid(const String& p_color)
	{
		String color = p_color;
	
		if (color.length()==0)
			return false;
		if (color[0]=='#')
			color=color.substr(1,color.length()-1);
	
		bool alpha=false;
	
		if (color.length()==8) {
			alpha=true;
		} else if (color.length()==6) {
			alpha=false;
		} else {
			return false;
		}
	
		int a=255;
		if (alpha) {
			a=_parse_col(color,0);
			if (a<0) {
				return false;
			}
		}
	
		int from=alpha?2:0;
	
		int r=_parse_col(color,from+0);
		if (r<0) {
			return false;
		}
		int g=_parse_col(color,from+2);
		if (g<0) {
			return false;
		}
		int b=_parse_col(color,from+4);
		if (b<0) {
			return false;
		}
	
		return true;
	}+/
	
	private static char[2] _to_hex(float p_val)
	{
		char[2] ret;
		
		int v = cast(int)(p_val * 255);
		v = clamp(v,0,255);
		
		foreach(int i; 0..2)
		{
			int lv = cast(char)(v&0xF);
			if (lv<10)
				ret[0]=cast(char)('0'+lv);
			else
				ret[0]=cast(char)('a'+lv-10);
			
			v>>=4;
		}
		
		return ret;
	}
	
	char[8] to_html() const
	{
		char[8] ret;
		ret[0..2] = _to_hex(r);
		ret[2..4] = _to_hex(g);
		ret[4..6] = _to_hex(b);
		ret[6..8] = _to_hex(a);
		return ret;
	}
	
	
	/+bool operator<(const Color& p_color) const {
	
		if (r==p_color.r) {
			if (g==p_color.g) {
				if(b==p_color.b) {
					return (a<p_color.a);
				} else
					return (b<p_color.b);
			} else
				return g<p_color.g;
		} else
			return r<p_color.r;
	
	}+/
}

