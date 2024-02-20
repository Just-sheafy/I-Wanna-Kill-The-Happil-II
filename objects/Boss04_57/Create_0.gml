var temp;

image_speed = 0;
image_xscale = 4;
image_yscale = 4;
alpha = 0;
scale = 4;

temp = instance_create_depth(480, 96, -14, Boss04_h3);

back_effect = -1;

key_restricted = 4;
key_time = 0;
attack = 1;
defence = 20;
t_spd = 2;

key_scale = 1;
attack_scale = 1;
defence_scale = 1;
t_spd_scale = 1;

canhit = 1;
nothit = 0;


// Shader
if (world.shader_supported) {
	_time = shader_get_uniform(shdTornado, "time");
	_resolution = shader_get_uniform(shdTornado, "resolution");
	_col = shader_get_uniform(shdTornado, "col");
	_rot = shader_get_uniform(shdTornado, "rot");
}
resol[0] = room_width/2;
resol[1] = room_height/2;

col[0] = 15;
col[1] = 0;
col[2] = 1;
col_after[0] = col[0];
col_after[1] = col[1];
col_after[2] = col[2];

t = 0;
t_spd = 1;
t_spd_extra = 0;
spd = 1;
spd_after = 1;
rot = 1;

// Setting
temp = instance_create_layer(32, 576, "Player", Boss04_41);
temp.image_index = 8;
temp = instance_create_layer(768, 576, "Player", Boss04_41);
temp.image_index = 9;
temp = instance_create_layer(768, 32, "Player", Boss04_41);
temp.image_index = 10;
temp = instance_create_layer(32, 32, "Player", Boss04_41);
temp.image_index = 11;
with(Boss04_41) visible = false;
temp = instance_create_layer(464, 304, "Player", Boss04_62);
temp.back_effect = id;
instance_create_layer(160, 256, "Player", Boss04_64);


// Surface
w = sprite_get_width(sprBoss04_62);
h = sprite_get_height(sprBoss04_62);

surf = surface_create(room_width, room_height);
mask_surf = surface_create(w, h);

surface_set_target(surf);
draw_clear(c_black);
surface_reset_target();

surface_set_target(mask_surf);
draw_clear(c_black);
gpu_set_blendmode(bm_subtract);
draw_sprite(sprBoss04_62, 0, 0, 0);
gpu_set_blendmode(bm_normal);
surface_reset_target();