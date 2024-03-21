var i, j, ir, jr, xs, ys;

if (!surface_exists(surf)) surf = surface_create(68, 68);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

for(i=0; i<2; i+=1) {
    for(j=0; j<2; j+=1) {
        ir = irandom_range(0, 29); jr = irandom_range(0, 29);
        draw_sprite_part_ext(sprBoss04_65, current_time+i+j, ir, jr, 34, 34, 34*i, 34*j, 1, 1, c_white, 1);
    }
}

gpu_set_blendmode_ext(bm_zero, bm_src_alpha);
draw_sprite(sprite_index, image_index, sprite_get_xoffset(sprite_index), sprite_get_yoffset(sprite_index));
gpu_set_blendmode(bm_normal);
surface_reset_target();

xs = image_xscale;
ys = image_yscale;

draw_surface_ext(surf, x - 34*xs*cos(degtorad(image_angle)) - 34*ys*sin(degtorad(image_angle)),
y + 34*xs*sin(degtorad(image_angle)) - 34*ys*cos(degtorad(image_angle)),
xs, ys, image_angle, c_white, image_alpha);
draw_sprite_ext(sprite_index, image_index + 4, x, y, xs, ys, image_angle, c_white, image_alpha);