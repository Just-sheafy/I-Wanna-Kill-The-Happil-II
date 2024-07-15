#region Init
image_speed = 0.2;
xscale = 1;
hspd = 0;
vspd = 0;
grav = 0;
max_hspd = 3;
max_vspd = 8;
grav_amount = 0.4;

jump_height = [8.5, 7];
jump_total = 2;

on_block = false;
on_platform = false;
frozen = false;

hyper_spd = 8;
hyper = false;
hyper_time = 0;

invinc = false;
invinc_time = 0;
shoot_time = 0;

reset_jumps();

xsafe = x;
ysafe = y;

Gravity = 1;
GravityH = 0;
noGravity = false;
is_riding = false;

with(world) {
    if !file_exists(gameCaption+"save") {saveEncrypt();}
}

buffer_x = 0;
buffer_y = 0;
mouse_hspd = 0; 
mouse_vspd = 0; // mouse

set_mask();
#endregion