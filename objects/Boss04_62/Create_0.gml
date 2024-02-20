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

hp0 = 44;
hpm0 = 44;
hp1 = 44;
hpm1 = 44;
bat = false;

foot_0 = instance_create_depth(320, 496, 0, Boss04_63);
foot_0.index = 0;
foot_1 = instance_create_depth(608, 496, 0, Boss04_63);
foot_1.index = 1;
back_effect = -1;
base_before = -1;

attack = true;

move_clockwise = false;
move_fast = false;
move_faster = false;
move_next = 0;
jumping = false;
NUM = 8;
patt = NUM-1;
alarm[0] = 100;

for(i=0; i<9; i+=1) {
    temp = instance_create_depth(32, i*64+48, 5, Boss04_40);
	temp.visible = false;
	temp.vspeed = -2;
    temp = instance_create_depth(800-32, i*64+48, 5, Boss04_40);
	temp.visible = false;
    temp.grav_dir = 180;
	temp.vspeed = 2;
}

for(i=0; i<12; i+=1) {
    temp = instance_create_depth(i*64+48, 32, 5, Boss04_40);
	temp.visible = false;
    temp.grav_dir = 270;
	temp.hspeed = 2;
    temp = instance_create_depth(i*64+48, 608-32, 5, Boss04_40);
	temp.visible = false;
    temp.grav_dir = 90;
	temp.hspeed = -2;
}