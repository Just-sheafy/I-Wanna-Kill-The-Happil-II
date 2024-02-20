audio_play_sound(snd01_4, 0, false);
instance_create_depth(0, 0, -100, light);
instance_destroy();

var i, a;

for(i=0; i<18; i+=1) {
    a = instance_create_depth(x+random_range(-64, 64), y+random_range(-64, 64), -1, Boss01_13);
    a.image_xscale = 8;
    a.image_yscale = 8;
    a.direction = 360/18*i+random(360/18);
    a.speed = random_range(1, 3);
    a.gravity_direction = a.direction;
    a.gravity = random_range(0.1, 0.2);
    a.friction = 0;
    a.ang = 1;
    a.alarm[0] = 0;
}