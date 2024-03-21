//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;

const float min_weight = 0.45;
const float max_weight = 1.65;

float rand(vec2 co)
{
    return fract(sin(dot(co, vec2(12.9898 + time, 78.233))) * 43758.5453 + time);
}

void main()
{
	float weight = min_weight + texture2D(gm_BaseTexture, v_vTexcoord).r * (max_weight - min_weight);
	float rng = pow(rand(v_vTexcoord), weight);
	float px = floor(rng * 3.) / 2.;
    gl_FragColor = vec4(px, px, px, 1.);
}