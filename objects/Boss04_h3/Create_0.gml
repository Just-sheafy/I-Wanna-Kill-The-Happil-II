event_inherited();

hp = 200;
hpm = 200;
shp = 0;
image_alpha = 0;
a = 0;
b = 0; // armor shake
cx = 0;
cy = 0;

armor = 0;
armor_alpha = 0;
armor_alpha2 = 1;

xx = x;
yy = y;
nothit = false;
nothit_temp = false;


// 3D effect
surf = surface_create(309, 64);
kill_block = instance_create_depth(x, y, 0, Boss04_66);
ox = 36;
oy = 32;

ix = 480;
iy = 64;

xx1 = ix-ox;
yy1 = iy-oy;
zz1 = 100;
xx2 = ix-ox+305-36;
yy2 = iy-oy;
zz2 = 100;

xx2_prev = xx2;
yy2_prev = yy2;

xx1_to = room_width / 2;
yy1_to = room_height / 2;
zz1_to = 100;
xx2_to = 0;
yy2_to = 0;
zz2_to = 50;

is_effect = false;
x_list = ds_list_create();
y_list = ds_list_create();

mode = 0;
_alpha = 0;
mode_t = 0;

r = 1;
theta = 0;
c = 1;
s = 0;
reflect = false;