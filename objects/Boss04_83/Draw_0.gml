var i, j;

if (!surface_exists(surf))
    surf = surface_create(sprite_get_width(sprite_index)*3, sprite_get_height(sprite_index)*3);

surface_set_target(surf);
draw_clear(c_black);
for(i=-3; i<=3; i+=1) {
    for(j=-3; j<=3; j+=1) {
        draw_sprite_ext(sprBoss04_76, 0, 3 * sprite_get_xoffset(sprite_index) + (xx + sprite_get_width(sprBoss04_76) * j) * cos(degtorad(image_angle))
            + (- yy - sprite_get_height(sprBoss04_76) * i) * sin(degtorad(image_angle)),
            3 * sprite_get_yoffset(sprite_index) + (xx + sprite_get_width(sprBoss04_76) * j) * sin(degtorad(image_angle))
            + (yy + sprite_get_height(sprBoss04_76) * i) * cos(degtorad(image_angle)),
            1, 1, -image_angle, c_white, 1);
    }
}

gpu_set_blendmode(bm_subtract);
draw_sprite_ext(sprite_index, 1, sprite_get_xoffset(sprite_index)*3, sprite_get_yoffset(sprite_index)*3, 3, 3, 0, c_white, 1);
gpu_set_blendmode(bm_normal);
surface_reset_target();

draw_surface_ext(surf, x - 3 * sprite_get_xoffset(sprite_index) * cos(degtorad(image_angle))
    - 3 * sprite_get_yoffset(sprite_index) * sin(degtorad(image_angle)),
    y + 3 * sprite_get_xoffset(sprite_index) * sin(degtorad(image_angle))
    - 3 * sprite_get_yoffset(sprite_index) * cos(degtorad(image_angle)),
    1, 1, image_angle, c_white, 1);
draw_self();

for(i=0; i<256; i+=1) {
	draw_sprite_ext(sprBoss04_39, bl1[i].index, bl1[i]._x, bl1[i]._y, 3, 3, 0, c_white, 1);
	draw_sprite_ext(sprBoss04_39, bl2[i].index, bl2[i]._x, bl2[i]._y, 3, 3, 0, c_white, 1);
}