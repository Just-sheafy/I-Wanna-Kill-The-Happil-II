with(other) {instance_destroy();}
if !canhit {exit;}
// with(Boss01_h) {hp -= 1;}
audio_play_sound(sndBossHit, 0, false, world.sound_vol);
with(Boss04_68) x = max(x-8, -250);
with(Boss04_h4) {  hp -= 1; a = 1; alarm[1] = 5; }
if !world.items[2] or !world.WASP_ok {
    canhit = 0;
    alarm[11] = 8;
}