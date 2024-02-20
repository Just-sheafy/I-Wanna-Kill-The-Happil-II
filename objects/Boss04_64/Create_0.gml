#region Init
image_speed = 0.2;
xscale = 1;
hspd = 0;
vspd = 0;
grav = 0;
max_hspd = 4;
max_vspd = 8;
grav_amount = 0.4;

jump_height = [8.5, 7];
jump_total = 2;

on_block = false;
on_platform = false;
frozen = false;

reset_jumps();

xsafe = x;
ysafe = y;

Gravity = 1;
GravityH = 0;
noGravity = false;
is_riding = false;

set_mask();
#endregion