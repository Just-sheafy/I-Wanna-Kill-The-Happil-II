var i, zx = instance_create_depth(x, y, depth, Boss03_22);
zx.sprite_index = sprite_index;
zx.image_angle = image_angle;
i = random(360);
zx.ox = lengthdir_x(5, i);
zx.oy = lengthdir_y(5, i);
zx.angle = random_range(2, -2);

alarm[0] = 3;