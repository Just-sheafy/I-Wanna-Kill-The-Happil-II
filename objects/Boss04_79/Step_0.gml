image_angle += as;

if (destroy) {
	image_alpha -= 0.01;
	if (image_alpha <= 0) instance_destroy();
}
if ((x <= -64 and hspeed < 0) or (x >= room_width+64 and hspeed > 0)
	or (y <= -64 and vspeed < 0) or (y >= room_height+64 and vspeed > 0)) instance_destroy();