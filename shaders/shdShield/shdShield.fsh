varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time; // (0-1)
uniform vec4 coords; // (x1, y1, x2, y2)


float DistToLine(vec2 pt1, vec2 pt2, vec2 testPt)
{
	vec2 lineDir = pt2 - pt1;
	vec2 perpDir = vec2(lineDir.y, -lineDir.x);
	vec2 dirToPt1 = pt1 - testPt;
	return abs(dot(normalize(perpDir), dirToPt1));
}

void main()
{
	vec3 col =  v_vColour.rgb;
	vec2 circle1 = vec2(0.492,0.497);
	vec2 circle2 = vec2(0.82, 0.68);
	
	vec2 circle3 = 1. - circle2;
	vec2 circle4 = 1. - circle1;
	float radMax = 22. / 42.;
	
	vec2 uv = vec2((gl_FragCoord.x - coords[0]) / (coords[2] - coords[0]),
				   (gl_FragCoord.y - coords[1]) / (coords[3] - coords[1]));
	float offset = (time - 0.5);

	float minDistance = 0.;
	for(float i = -2.; i <= 2.; i += 2.)
	{
		minDistance = max(minDistance,
			1. - DistToLine(vec2(offset + offset + i, 0.), vec2(1. + offset + offset + i, 1.),
				-vec2(1. - uv.x, uv.y)));
	}

	float alpha = pow(minDistance, 2.0);
	if(length(uv - 0.5) > 0.5)
	{
		alpha = 0.;
	}
	else
	{
		if(time <= 0.4) {
			float tt = time / 0.4;
			vec2 center = mix(circle1, circle2, tt);
			float rad = (1. - tt) * radMax;
			float dist = distance(center, uv);
			if(dist < rad)
			{
				alpha = 0.;	
			}
		}
		if(time >= 0.6) {
			float tt = (time - 0.6) / 0.4;
			vec2 center = mix(circle3, circle4, tt);
			float rad = tt * radMax;
			float dist = distance(center, uv);
			if(dist < rad)
			{
				alpha = 0.;	
			}
		}
		
	}
	
	if(alpha != 0.)
	{
		alpha += max(0., length(uv - 0.5) - 0.45) / 0.3;	
	}

	gl_FragColor = vec4(col, alpha * v_vColour.a);	
	

}
