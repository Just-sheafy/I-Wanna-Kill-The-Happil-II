direction += direction_speed;
image_angle = direction;
image_xscale = min(image_xscale+0.01*scale, scale);
image_yscale = min(image_yscale+0.01*scale, scale);

if (outside and (x <= -128 or x >= room_width + 128 or y <= -128 or y >= room_height + 128)) instance_destroy();
if (mobius) {
	if (x < -64) { x += room_width+128; direction *= -1; }
	if (x > room_width + 64) { x -= room_width+128; direction *= -1; }
	if (y < -64) y += room_height+128;
	if (y > room_height + 64) y -= room_height+128;
}