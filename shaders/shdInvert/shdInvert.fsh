//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform bool invertLeft;
uniform bool invertRight;
uniform float width;

void main()
{
	vec4 newCol = texture2D( gm_BaseTexture, v_vTexcoord );
	if(invertLeft && gl_FragCoord.x < width)
	{
		newCol.rgb = 1.0 - newCol.rgb;
	}
	if(invertRight && gl_FragCoord.x >= width)
	{
		newCol.rgb = 1.0 - newCol.rgb;
	}	
	
    gl_FragColor = v_vColour * newCol;
}
