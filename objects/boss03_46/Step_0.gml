var i, zx;

if !instance_exists(player) {for(i=0; i<6; i+=1) {alarm[i] = 0;} exit;}
if !instance_exists(Boss03_h3) and aa == 0 {
    nothit = 1;
    audio_play_sound(snd03_22, 0, false, world.sound_vol);
    alarm[0] = 0;
    alarm[1] = 100;
    with(Boss03_52) {instance_destroy();}
    with(Boss03_56) {instance_destroy();}
    with(Boss03_57) {instance_destroy();}
    with(Boss03_54) {alarm[0] = 0; a = 1;}
    with(Boss03_55) {alarm[0] = 0; a = 1;}
    instance_create_depth(0, 0, -100, light);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 50;
    aa = 1;
    patt = 0;
}