if other.ang == 3 {
    with(other) {instance_destroy(); instance_create_depth(x, y, -1, Boss02_51);}
    audio_play_sound(snd02_20, 0, false, world.sound_vol);
    Boss02_h7.hp -= 10;
    if Boss02_h7.hp > 10 {with(ghost[4-Boss02_h7.hp / 10]) {ang = 1; audio_play_sound(sndBoo, 0, false, world.sound_vol);}}
    if Boss02_h7.hp == 10 {with(ghost[4-Boss02_h7.hp / 10]) {instance_destroy();
        var zx = instance_create_depth(x, y, -2, Boss02_52); zx.hspeed = choose(1, -1)*5; zx.vspeed = choose(1, -1)*5; zx.ang = 1;
        audio_play_sound(sndBoo, 0, false, world.sound_vol);}}
}