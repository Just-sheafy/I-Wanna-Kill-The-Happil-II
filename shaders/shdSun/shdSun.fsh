//
// Simple passthrough fragment shader
//
precision mediump float;
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float time; // time
uniform float time2;
uniform float alpha; // alpha
uniform vec3 destColor; // color
uniform vec3 destColor2;
uniform vec3 destColor3;
uniform vec2 resolution; // resolution
uniform float number; // number

void main(){
	vec2 p = (gl_FragCoord.xy * 2.0 - resolution) / min(resolution.x, resolution.y); 	
	float a = atan(p.y / p.x) * number; // Instead of * 2.0, try * 26 or * 128 and higher
	float l = 0.55 / abs(length(p) - 0.8 + sin(a + time * 4.5) * 0.1);
	l *= 1.9+ cos(a + time * 00.13) * 0.03;
	
	vec2 p2 = (gl_FragCoord.xy * 3.0 - resolution) / min(resolution.x, resolution.y); 
	float a2 = atan(p.y / p.x) * 3.0;
	float l2 = 0.09 / abs(length(p) + 0.1 - (tan(time2/2.)+0.5) + sin(a + time2 * 13.5) * (0.1 * l));
	l2 *= ( 0.5 + sin(a + time2 * 00.03) * 0.03 ) * 4.0;
	
	vec2 p3 = (gl_FragCoord.xy * 2.0 - resolution) / min(resolution.x, resolution.y); 
	float a3 = atan(p.y / p.x) * 100.0;
	float l3 = 0.05 / abs(length(p) - 0.4 + sin(a + time2 * 23.5) * (0.1 * l2));
	l3 *= 1.5 + sin(a + time2 * 10.23) * 0.03;
	
	gl_FragColor = vec4(l*destColor + l2*destColor2 + l3*destColor3, alpha);
}