direction += as;
image_angle = direction;

if (image_alpha < 1) image_alpha += 0.1;

if (out_anim and ((x <= 10 and hspeed < 0) or (x >= room_width-10 and hspeed > 0) or
	(y <= 10 and vspeed < 0) or (y >= room_height-10 and vspeed > 0))) {
	instance_destroy();
	var zx = instance_create_depth(x, y, depth-1, Boss03_82);
	zx.image_xscale = image_xscale;
	zx.image_yscale = image_yscale;
	zx.image_angle = image_angle;
}