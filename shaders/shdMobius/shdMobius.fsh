//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;		       // global timer variable
uniform float time_init;       // initial timer variable
uniform float width;           // width of mobius
uniform vec2  resolution;      // screen resolution

float scr_ease_cos(float t, float s)
{
	float t2, temp;
	
	t2 = (t-floor(t))*(2.+2.*s);
	if (t2 <= 0.) return 1.;
	else if (t2 <= 1.) {
	    temp = 1.-2.*t2;
	    return -(temp*temp*temp-3.*temp)/2.;
	} else if (t2 <= 1.+s) return -1.;
	else if (t2 <= 2.+s) {
	    temp = -1.+2.*(t2-1.-s);
	    return -(temp*temp*temp-3.*temp)/2.;
	} else return 1.;	
}

void main()
{
	float epsilon = 0.01;
	float arg = resolution.x / width;
	float yyy = (1.+scr_ease_cos((v_vTexcoord.x - time/resolution.x)/2., arg-1.))*time_init/resolution.y/2.;
	if (v_vTexcoord.y >= min(yyy, 1.-yyy) && v_vTexcoord.y <= max(1.-yyy, yyy))
	{
		vec2 v_vNewcoord;
		if (abs(1.-2.*yyy) >= epsilon)
			v_vNewcoord = vec2( vec2( v_vTexcoord.x, (v_vTexcoord.y-yyy)/(1.-2.*yyy) ) );
		else
			v_vNewcoord = vec2( vec2( v_vTexcoord.x, 0 ) );
		// (1.-2.*v_vTexcoord.y)
		gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vNewcoord );
	}
	else
	{
		gl_FragColor = vec4( 0., 0., 0., 1. );
	}
}
