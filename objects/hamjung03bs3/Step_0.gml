if a {
    var zx = instance_create_depth(random(room_width), oy, depth, Hamjung03Bs3);
    zx.visible = true;
	zx.sprite_index = sprite_index;
    zx.vspeed = -random_range(4, 6)*spd;
    zx.hspeed = random_range(-1, 1)*spd;
    zx.gravity = -0.05*spd;
    zx.image_xscale = random_range(0.5,1);
    zx.image_yscale = zx.image_xscale;
    zx.a = 0;
	zx.spd = spd;
	
    zx = instance_create_depth(random(room_width), oy, depth, Hamjung03Bs3);
    zx.visible = true;
	zx.sprite_index = sprite_index;
    zx.vspeed = -random_range(4, 6)*spd;
    zx.hspeed = random_range(-1, 1)*spd;
    zx.gravity = -0.05*spd;
    zx.image_xscale = random_range(0.5,1)*spd;
    zx.image_yscale = zx.image_xscale;
    zx.a = 0;
	zx.spd = spd;
} else {
    image_xscale -= 0.03*spd;
    image_yscale -= 0.03*spd;
    if image_xscale <= 0 {instance_destroy();}
}