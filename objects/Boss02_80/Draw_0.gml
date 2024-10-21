gpu_set_blendmode(bm_add);
draw_self();
gpu_set_blendmode(bm_normal);


var idx =  sprite_get_speed(sprBoss02_83) * get_timer() / power(10, 6);
var scale = 2;
draw_sprite_ext(sprBoss02_83, idx, x, y + 34 * scale, -sign(hspeed) * scale, scale, 0, c_white, destroy ? 0 : image_alpha);