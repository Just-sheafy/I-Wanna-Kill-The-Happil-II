if !instance_exists(player) or !world.re_nodie {exit;}
if (global.practice < 0) {
	player.x = 400;
	world.re_nodie = false;
	saveControls();
	with(world) {
	    saveEncrypt();
	    saveDeaths();
	}
}