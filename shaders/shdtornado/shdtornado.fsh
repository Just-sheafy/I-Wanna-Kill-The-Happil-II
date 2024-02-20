//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

// glslsandbox uniforms
uniform float time;
uniform vec2 resolution;
uniform vec3 col;
uniform float rot;

// shadertoy emulation
#define iTime time
#define iResolution vec3(resolution,20.)

mat2 vec4tomat2(vec4 v)
{
	return mat2(v.x, v.y, v.z, v.w);
}

vec3 mainImage(vec2 I)
{
    vec3 p=iResolution, d = -.5*vec3(I+I-vec2(800,608),p)/p.x, c = vec3(0.), i=vec3(0.);
	
    for(int n=0;n<20;n++) {
        p = c;
        p.z -= iTime+(i.x-=.02*rot);
        p.xy = mat2(vec4tomat2(sin((p.z*=.1)+vec4(0,11,33,0)))) * p.xy;
        c += length(sin(p.yx)+cos(p.xz+iTime))*d*rot;
    }
	
    return col/max(10., 3.*length(c));
}

void main()
{
    gl_FragColor.rgb = mainImage(gl_FragCoord.xy);
    gl_FragColor.a = 150.;
}