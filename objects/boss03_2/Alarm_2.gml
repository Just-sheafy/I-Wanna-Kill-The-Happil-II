var i, zx;

if e == 0 {
    zx = instance_create_depth(x, y, 0, Boss01_23);
    zx.sid = id;
    zx.alarm[0] = 75;
    e += 1; 
    alarm[2] = 90;
} else {
    for(i=0; i<24; i+=1) {
        zx = instance_create_depth(x, y, -3, Boss03_8);
        zx.direction = i*15;
        zx.speed = 2;
        zx.gravity_direction = zx.direction;
        zx.gravity = 0.2;
        zx.alarm[11] = 2;
    }
    audio_play_sound(snd01_6, 0, false);
    e = 0;
    alarm[2] = 180;
}