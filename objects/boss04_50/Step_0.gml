if (image_alpha < 1) image_alpha += 0.1;
image_angle += 8;

if x <= 0 {hspeed = abs(hspeed); audio_play_sound(snd04_42, 0, false);}
if x >= room_width {hspeed = -abs(hspeed); audio_play_sound(snd04_42, 0, false);}
if y <= 0 {vspeed = abs(vspeed); audio_play_sound(snd04_42, 0, false);}
if y >= room_height {vspeed = -abs(vspeed); audio_play_sound(snd04_42, 0, false);}