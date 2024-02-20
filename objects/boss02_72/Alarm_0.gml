if (patt < 4) {
    image_index += 1;
    patt += 1;
    alarm[0] = 3;
} else {
    gravity = 0.12;
    sprite_index = sprBoss02_74;
    image_speed = 15 / 50;
}