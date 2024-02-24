hp -= 1;
with(other) {instance_destroy();}
audio_play_sound(sndBossHit, 0, false, world.sound_vol);