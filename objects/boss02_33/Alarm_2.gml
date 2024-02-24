if !instance_exists(player) {exit;}
vspeed = 30;
x = player.x;
y = 0;
alarm[0] = 24;
audio_play_sound(sndSpikeTrap, 0, false, world.sound_vol);
sprite_index = sprBoss02_75;
image_speed = 0;
image_index = 0;
with(Boss02_73) active = false;