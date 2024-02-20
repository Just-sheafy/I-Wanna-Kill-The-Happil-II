var temp, zx;

depth = -5;

xx = x;
yy = y;
pos_time = 0;
angle = 0;
angle_time = 0;
d = 0;
effect_id = -1;
temp_id = -1;

patt = 0;
type = -1; // 0: fixed TNT, 1: guided koopa, 2: right rush, 3: knife boomerang, 4: down shoot, 5: summon boshy, 6: thwomp

canhit = 1;
nothit = 0;
temp = instance_create_depth(64, 96, -14, Boss04_h);
if (room == Stage04Bs4) {
	temp.sprite_index = sprBoss04_h3;
    temp.hp /= 2;
    if (instance_exists(player)) {
        if (!player.Gravity) {
            temp.yy = room_height - temp.yy;
        }
    }
} else {
    zx = instance_create_depth(x, y, -10, Boss04_n);
    zx.image_index = 1;
    zx.sid = id;
    zx.ox = -5;
    zx.oy = -6;
}
shield_id = instance_create_depth(x, y, depth+1, Boss04_17);
shield_id.tracking_obj = id;

boshy_appear = false;
can_thwomp = true;

if (room == Stage04Bs)
    alarm[2] = choose(80, 120);
else
    alarm[1] = 80;