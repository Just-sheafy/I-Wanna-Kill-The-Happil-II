if(!instance_exists(objGoombaController)) {
	throw("Place goomba controller before spawning");
}

image_speed = 1/5;
hspeed = choose(2, -2);
asdf = 0;

objGoombaController.onGoombaSpawn(id);

onDeath = function() {
	objGoombaController.onGoombaDestroy(id);
    asdf = 1;
    hspeed = 0;
    vspeed = 0;
    gravity = 0;
    sprite_index = sprBoss02_11;
    alarm[0] = 20;
	audio_play_sound(snd02_5, 0, false, world.sound_vol);
    if image_xscale != 1 {
		for(var i =  -4; i <= 4; i += 8)
		{
			instance_create_depth(x, y-image_xscale*16, -1, Boss02_7, {
				sprite_index : sprBoss02_7,
				image_xscale : image_xscale / 2,
				image_yscale : image_yscale / 2,
				hspeed : i,
				vspeed : -5,
				image_speed : 1/5,
			});	
		}
    }
    with(player) {vspd = -6; reset_jumps();}
}