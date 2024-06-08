if !instance_exists(player) or !world.re_nodie {exit;}
player.x = 400;
if (global.practice < 0) {
	world.re_nodie = false;
	saveControls();
	with(world) {
	    saveEncrypt();
	    saveDeaths();
	}
}