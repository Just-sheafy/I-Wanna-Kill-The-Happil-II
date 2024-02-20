if other.dou == 0 {exit;}
with(other) {instance_destroy();}
with(Boss01_h) {hp -= 40;}
audio_play_sound(sndBossHit, 0, false);