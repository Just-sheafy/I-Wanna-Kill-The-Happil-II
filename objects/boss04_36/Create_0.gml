var i, temp;

image_speed = 0;
depth = -1;

angle = 0;
angle_preserved = 0;
ox = x;
oy = y;
ox_over = false;
oy_over = false;
x_origin = x;
y_origin = y;
d = 0;

t = 14; // create gravity changer
t2 = 14;
t_spd = 2; // time speed

hp0 = world.Boss4HP;
hpm0 = 44;
hp1 = world.Boss4HP;
hpm1 = 44;
bat = false;
dead = false;

foot_0 = instance_create_depth(320, 496, 0, Boss04_37);
foot_0.index = 0;
foot_1 = instance_create_depth(608, 496, 0, Boss04_37);
foot_1.index = 1;
back_effect = instance_create_depth(0, 0, 100, Boss04_42);
base_before = -1;
instance_create_depth(room_width/2, room_height/2, -20, Boss04_51);
temp = instance_create_depth(0, 0, -100, surf_lens);
temp.sid = id;

blackhole = false;
blackhole_angle = 0;
blackhole_alpha = 0;
attack = true;
surf = -1;

move_clockwise = false;
move_fast = false;
move_faster = false;
move_next = 0;
jumping = false;
num = 0; // 1: vjump, 2: change direction, 3: jump, 4: move fast
num_before = 0;
type_before = -1; // 0: knife, 1: Prince black, 2: blackhole, 3: Unwasa
type_list = ds_list_create();
ds_list_add(type_list, 0); ds_list_add(type_list, 1);
ds_list_add(type_list, 2); ds_list_add(type_list, 3);
black_appear = false;
unwasa_appear = false;
NUM = 8;
patt = NUM-1;
alarm[0] = 100;
alarm[10] = 1;

zx = instance_create_depth(x, y, -10, Boss04_n);
zx.sid = id;
zx.image_index = 7;

for(i=0; i<9; i+=1) {
    temp = instance_create_depth(32, i*64+48, 5, Boss04_40);
	temp.vspeed = -2;
    temp = instance_create_depth(800-32, i*64+48, 5, Boss04_40);
    temp.grav_dir = 180;
	temp.vspeed = 2;
}

for(i=0; i<12; i+=1) {
    temp = instance_create_depth(i*64+48, 32, 5, Boss04_40);
    temp.grav_dir = 270;
	temp.hspeed = 2;
    temp = instance_create_depth(i*64+48, 608-32, 5, Boss04_40);
    temp.grav_dir = 90;
	temp.hspeed = -2;
}

if (world.HEALTH_ok) {
	var zx = instance_create_depth(0, 0, -49, playerHealth);
	if (world.hp_before != -1) zx.hp = min(5, world.hp_before);
	else zx.hp = 5;
	zx.hpm = max(5 - (4 - world.Boss4HP/11), 1);
	zx.hp = min(zx.hp, zx.hpm);
	if (zx.hp < zx.hpm) {
		zx = instance_create_depth(640, 304, -3, objHealthItem2);
		zx.time = 450;
	}
	world.hp_before = -1;
	num_before = 3;
}

if (!world.screen_effect_enable)
    instance_create_depth(0, 0, -100, dark1);
else {
	if (world.surf_temp != -1 and surface_exists(world.surf_temp)) {
		var cam = view_camera[0];
			
		temp = instance_create_depth(0, 0, 0, view_break);
		temp.depth = -20;
		if (!surface_exists(temp.surf))
		    temp.surf = surface_create(camera_get_view_width(cam)/4, camera_get_view_height(cam)/4);
		surface_copy(temp.surf, 0, 0, world.surf_temp);
		surface_free(world.surf_temp);
		world.surf_temp = -1;
            
		with(temp) event_user(0);
	} else instance_create_depth(0, 0, -100, dark1);
}

alarm[11] = 1;