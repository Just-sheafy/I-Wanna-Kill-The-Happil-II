gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
gpu_set_blendmode(bm_normal);

if (instance_exists(Boss01_35)) {
    draw_sprite_ext(sprBoss01_33, 2, x, y, 2, 2, Boss01_35.pink, c_white, pink_alpha*image_alpha);
    draw_sprite_ext(sprBoss01_33, 3, x, y, 2, 2, Boss01_35.yellow, c_white, yellow_alpha*image_alpha);
    draw_sprite_ext(sprBoss01_33, 4, x, y, 2, 2, Boss01_35.blue, c_white, blue_alpha*image_alpha);
    draw_sprite_ext(sprBoss01_33, 5, x, y, 2, 2, Boss01_35.red, c_white, red_alpha*image_alpha);
}