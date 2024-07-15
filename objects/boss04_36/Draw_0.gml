var use_shdr = (Boss04_36.hp0 <= 0 && Boss04_36.hp1 <= 0
		   && world.shader_supported);

if(use_shdr)
{
	var w = sprite_get_width(sprite_index);
	var h = sprite_get_height(sprite_index);
	var divFactor = 4;

	if(!surface_exists(surfNoise))
	{
		surfNoise = surface_create(w / divFactor, h / divFactor);
	}
	
	scr_draw_noise(sprite_index, 2, x, y, image_angle, image_blend, image_alpha, 0.8, 2.2, divFactor, surfNoise);
	
}
else
	draw_self();

if (blackhole_alpha > 0) {
	if (!surface_exists(surf))
	    surf = surface_create(sprite_get_width(sprite_index), sprite_get_height(sprite_index));

	surface_set_target(surf);
	draw_clear(c_black);
	draw_sprite_ext(back04Bs10, 0, sprite_get_xoffset(sprite_index), sprite_get_yoffset(sprite_index),
		1, 1, blackhole_angle, c_white, 1);
	gpu_set_blendmode(bm_subtract);
	draw_sprite(sprite_index, 1, sprite_get_xoffset(sprite_index), sprite_get_yoffset(sprite_index));
	gpu_set_blendmode(bm_normal);
	surface_reset_target();

	draw_surface_ext(surf, x - sprite_get_xoffset(sprite_index) * cos(degtorad(image_angle))
		- sprite_get_yoffset(sprite_index) * sin(degtorad(image_angle)),
		y + sprite_get_xoffset(sprite_index) * sin(degtorad(image_angle))
		- sprite_get_yoffset(sprite_index) * cos(degtorad(image_angle)),
		1, 1, image_angle, c_white, blackhole_alpha);
}