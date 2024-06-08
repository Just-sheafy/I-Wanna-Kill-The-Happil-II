image_xscale = 3;
image_yscale = 3;
angle = 0;
angle_time = 0;
instance_create_depth(0, 0, -8, Boss01Sr_h);

with(Boss01Sr_1) AIM = 4;

pattern_before = -1;
pattern = [false, false, false, false, false, false];
// tongue, fire, stomp, clone, baby yoshi, hexagon

bounce = 0;
bounce_num = 3;
action = false;
patt = 0;

blue_alpha = 0;
green_alpha = 0;
yellow_alpha = 0;
red_alpha = 0;

hspd = -3;
vspd = 0;
grav = 0.2;

canhit = true;
nothit = false;
is_dead = false;
oy = 0;