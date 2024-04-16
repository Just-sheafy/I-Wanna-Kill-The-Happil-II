
precision mediump float;
uniform vec2 resolution;
uniform float time;
uniform float hspd;

const float Pi = 3.14159;

const int   complexity      = 8;    // More points of color.
const float fluid_speed     = 1000.0;  // Drives speed, higher number will make it slower.
const float color_intensity = 0.4;

float sin_app(float num)
{
	float num2 = fract(num/Pi/2.0+0.5)*2.0*Pi-Pi;
	return -num2*(num2-Pi)*(num2+Pi)/12.0;
}

void main()
{
  vec2 p=(12.0*gl_FragCoord.xy-resolution)/max(resolution.x,resolution.y);
  for(int i=1;i<complexity;i++)
  {
    vec2 newp=p + time*0.0003;
    newp.x+=1.1/float(i)*sin_app(float(i)*p.y+time/fluid_speed*float(i+2000)) + 0.5;
    newp.y+=5./float(i)*sin_app(float(i)*p.x-hspd*time/fluid_speed*float(i+1909)) - 0.5;
    p=newp;
  }
  vec3 col=vec3(color_intensity*sin_app(3.0*p.x),color_intensity*sin_app(3.0*p.x),color_intensity*sin_app(3.0*p.x));
  gl_FragColor=vec4(col, 1.0);
}