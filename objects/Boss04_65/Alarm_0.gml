var i, zx = instance_create_depth(x, y, depth, Boss03_22);
zx.sprite_index = sprite_index;
zx.image_index = image_index;
zx.image_angle = image_angle;
zx.image_xscale = image_xscale;
zx.image_yscale = image_yscale;
zx.a = 0.08;
zx.ox = hspeed/2;
zx.oy = vspeed/2;
zx.angle = direction_speed/2;
/*
zx.surf = surface_create(128, 128);
surface_copy(zx.surf, 0, 0, surf);
*/

alarm[0] = 3;