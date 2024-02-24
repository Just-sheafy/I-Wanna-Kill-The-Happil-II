with(other) {instance_destroy();}
if !canhit or !instance_exists(Boss02_h3) {exit;}
Boss02_h3.hp -= 1;
audio_play_sound(sndBossHit, 0, false, world.sound_vol);
if !world.items[2] or !world.WASP_ok {
    canhit = 0;
    alarm[11] = 8;
}