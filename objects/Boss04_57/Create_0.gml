var temp;

image_speed = 0;
image_xscale = 4;
image_yscale = 4;
alpha = 0;
scale = 4;

hp_var = instance_create_depth(480, 96, -14, Boss04_h3);


// For 3D effect
xx = room_width / 2;
yy = room_height / 2;
zz = 100;
CX = room_width / 2;
CY = room_height / 2;

zz_speed = 0;
zz_gravity = 0;

xx_from = 0;
yy_from = 0;
zz_from = 0;
xx_to = 0;
yy_to = 0;
zz_to = 0;

ixx = xx;
iyy = yy;
izz = 100;
txx = 0;
tyy = 0;
tzz = 0;
_r = sprite_get_height(sprite_index)/2;
_theta = 0;

patt = 0;
pat = 0;
mode = 0;
mode_time = 0;
mode_time_v = 0;
acc = 1;

rush = 0;
dir_before = 0;

// For natural camera walking
xx1_from = CX-128;
yy1_from = CY;
xx1_to = xx1_from;
yy1_to = yy1_from;
t1 = 0;
t1_max = 150;

xx2_from = CX+128;
yy2_from = CY;
xx2_to = xx2_from;
yy2_to = yy2_from;
t2 = 0;
t2_max = 150;

// For special effect
back_effect = -1;

key_restricted = 4;
key_time = 0;
attack = 1;
defence = 25;
t_spd = 2;

key_scale = 1;
attack_scale = 1;
defence_scale = 1;
t_spd_scale = 1;

canhit = 1;
nothit = 0;


// Shader
if (world.shader_supported) {
	__time = shader_get_uniform(shdTornado, "time");
	__resolution = shader_get_uniform(shdTornado, "resolution");
	__col = shader_get_uniform(shdTornado, "col");
	__rot = shader_get_uniform(shdTornado, "rot");
}
_resol[0] = room_width/2;
_resol[1] = room_height/2;

_col[0] = 15;
_col[1] = 0;
_col[2] = 1;
_col_after[0] = _col[0];
_col_after[1] = _col[1];
_col_after[2] = _col[2];

_t = 0;
_t_spd = 1;
_t_spd_extra = 0;
_spd = 1;
_spd_after = 1;
_rot = 1;


// Setting
alarm[0] = 50;


// Surface
w = sprite_get_width(sprBoss04_62);
h = sprite_get_height(sprBoss04_62);

surf = -1;
_xoffset = 3*sprite_get_width(sprite_index);
_yoffset = 3*sprite_get_height(sprite_index);

surf_room = -1;
mask_surf = -1;

surf_room = -1;
mask_surf = -1;