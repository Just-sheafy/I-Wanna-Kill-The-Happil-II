if (!surface_exists(surf)) surf = surface_create(104*3, 88*3);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

for(i=0; i<ceil(88*3/48); i+=1) {
    for(j=0; j<ceil(104*3/48); j+=1) {
        ir = irandom_range(0, 15); jr = irandom_range(0, 15);
        draw_sprite_part_ext(sprBoss04_65, current_time+i+j, ir, jr, 48, 48, 48*i, 48*j, 1, 1, c_white, 1);
    }
}

gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
draw_sprite_ext(sprBoss04_62, 0, 0, 0, 3/2, 3/2, 0, c_white, 1);
gpu_set_blendmode(bm_normal);
draw_sprite_ext(sprBoss04_62, 2, 0, 0, 3/2, 3/2, 0, c_white, 1);
surface_reset_target();

draw_surface(surf, x-52*3, y-44*3);