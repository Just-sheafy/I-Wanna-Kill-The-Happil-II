if a1 != 0 and !crazy {exit;}
if a11 == 0 {
    var i, zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 30;
    audio_play_sound(sndBossHit, 0, false, world.sound_vol);
    image_alpha = 0.3;
    a11 = 7;
    with(Boss03Sr_h) {hp -= 10;}
    a1 = 1;
    a1_1 = irandom_range(15-Boss03Sr_h.hp*0.05, 22-Boss03Sr_h.hp*0.1);
    alarm[1] = 300;
    alarm[11] = 8;
    active = true;
    audio_play_sound(sndSr03_5, 0, false, world.sound_vol);
    if !crazy and Boss03Sr_h.hp <= 40 {
        crazy = 1;
		audio_play_sound(sndSr03_6, 0, false, world.sound_vol);
        for(i=0; i<30; i+=1) {
            zx = instance_create_depth(0, 0, 0, view_an1);
            zx.asdf = 100-15*floor(i/5);
        }
        
        instance_create_depth(0, 0, -10, dark5);
        zx = instance_create_depth(0, 0, 0, soundEx2);
        zx.Vol = 0; zx.ang = 0;
        zx.M1 = audio_play_sound(global.stage03Sr2, 10, true, world.music_vol);
        zx.M2 = world.Instance;
        world.filePlaying = 15.6;
		world.curMusic = global.stage03Sr2;
		
		with(playerHealth) {
			hpm = 3;
			if (hp < hpm) {
				var zx = instance_create_layer(400, 336, "Player", objHealthItem2);
				zx.time = 400;
			}
		}
    }
}