if place_meeting(x+hspeed, y, block) {hspeed = -hspeed; audio_play_sound(sndBulletBounce, false, 0); dou += 1;}
if place_meeting(x, y+vspeed, block) {vspeed = -vspeed; audio_play_sound(sndBulletBounce, false, 0); dou += 1;}
if place_meeting(x+hspeed, y+vspeed, block) {hspeed = -hspeed; vspeed = -vspeed; audio_play_sound(sndBulletBounce, false, 0); dou += 1;}
if dou >= 5 {instance_destroy();}