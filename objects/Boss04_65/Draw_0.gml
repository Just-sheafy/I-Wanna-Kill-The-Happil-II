var i, j, ir, jr;

if (!surface_exists(surf)) surf = surface_create(128, 128);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

for(i=0; i<4; i+=1) {
    for(j=0; j<4; j+=1) {
        ir = irandom_range(0, 48); jr = irandom_range(0, 48);
        draw_sprite_part_ext(sprBoss04_65, current_time+i+j, ir, jr, 16, 16, 32*i, 32*j, 2, 2, c_white, 1);
    }
}

gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
draw_sprite(sprite_index, 0, sprite_get_xoffset(sprite_index), sprite_get_yoffset(sprite_index));
gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface_ext(surf, x - sprite_get_xoffset(sprite_index)*image_xscale*cos(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*sin(degtorad(image_angle)),
	y + sprite_get_xoffset(sprite_index)*image_xscale*sin(degtorad(image_angle)) - sprite_get_yoffset(sprite_index)*image_yscale*cos(degtorad(image_angle)),
	image_xscale, image_yscale, image_angle, c_white, image_alpha);