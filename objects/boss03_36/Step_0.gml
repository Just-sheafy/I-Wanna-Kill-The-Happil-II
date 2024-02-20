if x < -100 and hspeed < 0 {instance_destroy();}
if x >room_width+100 and hspeed > 0 {instance_destroy();}
if y > room_height+100 {instance_destroy();}
if !instance_exists(player) {exit;}
if a == 1 and y > 492 {
    y = 492;
    sprite_index = sprBoss03_30;
    hspeed = -hspeed*3;
    vspeed = 0;
    gravity = 0;
    a = 2;
    audio_play_sound(snd03_17, 0, false);
}