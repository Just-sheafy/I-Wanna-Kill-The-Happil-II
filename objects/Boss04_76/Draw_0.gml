if (instance_exists(platform_id)) {
	draw_sprite_ext(platform_id.sprite_index, 0, platform_x, platform_y, -platform_id.image_xscale, 1, image_angle, c_white, image_alpha);
}
if (instance_exists(sid)) {
	draw_sprite_ext(sid.sprite_index, sid.image_index, x, y, -sid.image_xscale * sid.xscale, 1, image_angle, c_white, image_alpha);
}