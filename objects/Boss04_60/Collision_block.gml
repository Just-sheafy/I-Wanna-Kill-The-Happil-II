with(other) {
	instance_destroy();
	var zx = instance_create_depth(x, y, -2, Hamjung03Bs7);
	zx.sprite_index = sprite_index;
	zx.image_index = image_index;
	zx.speed = 10; zx.direction = point_direction(400, (Boss04_60.image_yscale == 1)? -32 : room_height+32, x+16, y+16);
	zx.x_offset = 16; zx.y_offset = 16;
}