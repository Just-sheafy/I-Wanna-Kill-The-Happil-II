if a1 == 1 {
    audio_play_sound(sndSr03_2, 0, false, world.sound_vol);
    a1 += 1;
    alarm[1] = 75;
} else if a1 <= a1_1+1 {
    if a1 == 2 {
        var zx = instance_create_depth(0, 0, 0, view_an3);
        zx.asdf = 30;
    }
    var temp = instance_create_depth(400, 144, -2, Boss03Sr_2);
    if (crazy and num_zombie < (50-Boss03Sr_h.hp)/10) {
        if (random(1) < 0.01 * ((50-Boss03Sr_h.hp)/10 - num_zombie)) {
            temp.revive = true;
            num_zombie += 1;
        }
    }
    a1 += 1;
    alarm[1] = 5;
} else {
    a1 = 0;
    if (crazy and instance_exists(player)) alarm[1] = 500;
}