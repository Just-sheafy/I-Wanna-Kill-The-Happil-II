if !instance_exists(player) or !world.re_nodie {exit;}
with(player){
	if (!Gravity) flip_grav(false);
	if (GravityH) rotate_grav(false);
	x = 177;
	y = 279;
	hspd = 0;
	vspd = 0;
}

if (global.practice < 0) {
	world.re_nodie = false;
	saveControls();
	with(world) {
	    saveEncrypt();
	    saveDeaths();
	}
}