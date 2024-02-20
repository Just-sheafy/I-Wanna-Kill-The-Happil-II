with(other) {instance_destroy();}
if !canhit {exit;}
with(Boss01_h3) {hp -= 1;}
audio_play_sound(sndBossHit, 0, false);
if !world.items[2] or !world.WASP_ok {
    canhit = 0;
    alarm[11] = 8;
}