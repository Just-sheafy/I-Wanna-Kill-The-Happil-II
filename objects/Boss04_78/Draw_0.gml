var i, j, ir, jr;

if (!surface_exists(surf)) surf = surface_create(210, 240);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

for(i=0; i<4; i+=1) {
	for(j=0; j<4; j+=1) {
		ir = irandom_range(0, 31); jr = irandom_range(0, 31);
		draw_sprite_part_ext(sprBoss04_65, current_time+i+j, ir, jr, 32, 32, 64*j, 64*i, 2, 2, c_white, 1);
	}
}

gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
draw_sprite_ext(sprite_index, image_index, sprite_get_xoffset(sprite_index)*10, sprite_get_yoffset(sprite_index)*10, 10, 10, 0, c_white, 1);
gpu_set_blendmode(bm_normal);

draw_set_color(c_red);
draw_set_font(stageFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(sprite_get_xoffset(sprite_index)*10+12, sprite_get_yoffset(sprite_index)*10+18, "GO!", 2*30/18, 2*30/18, 0);
draw_set_color(c_white);

surface_reset_target();

draw_surface_ext(surf, x - sprite_get_xoffset(sprite_index)*image_xscale*cos(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*sin(degtorad(image_angle)),
	y + sprite_get_xoffset(sprite_index)*image_xscale*sin(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*cos(degtorad(image_angle)),
	1, 1, image_angle, c_white, image_alpha);