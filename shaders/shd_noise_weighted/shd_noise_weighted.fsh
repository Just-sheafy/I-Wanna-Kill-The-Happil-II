//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;
uniform vec2 weights; //min weight, max weight


float rand(vec2 co)
{
    return fract(sin(dot(co, vec2(12.9898 + time, 78.233))) * 43758.5453 + time);
}

void main()
{
	vec4 texCols = texture2D(gm_BaseTexture, v_vTexcoord);
	float px;
	if(texCols.b != 0.) //Plain color
	{
		px = 1. - texCols.b;
	}
	else //Rng color
	{
		float weight = weights[0] + texCols.r * (weights[1] - weights[0]);
		float rng = pow(rand(v_vTexcoord), weight);
		px = floor(rng * 3.) / 2.;
	}
    gl_FragColor = vec4(px, px, px, texCols.a);
}