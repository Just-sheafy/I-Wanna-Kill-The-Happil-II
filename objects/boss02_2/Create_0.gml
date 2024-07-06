image_xscale = 7;
image_yscale = 7;
image_speed = 1/2;

if (world.shader_supported)
{
	t_uniform = shader_get_uniform(shd_noise_weighted, "time");
	weights_uniform = shader_get_uniform(shd_noise_weighted, "weights");	
}
t = random(1);
tt = 0;

surf = -1;

crazy = 0;
color = make_color_rgb(random(255), random(255), random(255));
alarm[0] = 3;
alarm[1] = 2;