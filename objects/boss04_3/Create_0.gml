var temp, zx;

depth = -5;

xx = x;
yy = y;
pos_time = 0;
angle = 0;
angle_time = 0;
d = 0;
effect_id = -1;

patt = 0;
type = -1; // 0: guided TNT, 1: fixed koopa, 2: left rush, 3: dispenser, 4: up shoot, 5: hamjung, 6: thwomp

canhit = 1;
nothit = 0;
temp = instance_create_depth(480+265, 96, -14, Boss04_h2);
if (room == Stage04Bs4) {
	temp.sprite_index = sprBoss04_h4;
    temp.hp /= 2;
    if (instance_exists(player)) {
        if (!player.Gravity) {
            temp.yy = room_height - temp.yy;
        }
    }
} else {
    zx = instance_create_depth(x, y, -10, Boss04_n);
    zx.image_index = 2;
    zx.sid = id;
    zx.ox = -91;
    zx.oy = -6;
}
shield_id = instance_create_depth(x, y, depth+1, Boss04_17);
shield_id.tracking_obj = id;

can_koopa = true;
can_thwomp = true;
time_delay = 0;
num_thwomp = 0;
NUM_thwomp = 6;

if (room == Stage04Bs)
    alarm[2] = choose(80, 120);
else {
    alarm[1] = 80;
	time_delay = 100;
}