var i, a, zx;

for(i=0; i<400; i+=1) {
    a = instance_create_depth(x, y, -4, fruit);
    a.sprite_index = sprFruitGr;
    a.direction = point_direction(x, y, irandom(800), 448);
    a.speed = random_range(1.5, 16);
}
zx = instance_create_depth(0, 0, 0, view_an3);
zx.asdf = 20;
audio_play_sound(snd01_2, 0, false);
alarm[1] = 60;