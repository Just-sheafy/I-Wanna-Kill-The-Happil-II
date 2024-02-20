var zx;

if (sprite_index == sprBoss04_11) {
    image_index = 1;
    zx = instance_create_depth(x, y, -1, Boss04_13);
    if (instance_exists(player))
        zx.direction = point_direction(x, y, player.x, player.y);
    else
        zx.direction = point_direction(x, y, 0, 0);
    zx.speed = 6;
    audio_play_sound(snd04_17, 0, false);
    
    alarm[2] = 20;
}
if (sprite_index == sprBoss04_13) {
    zx = instance_create_depth(x, y, -1, Boss03_74);
    if (instance_exists(player))
        zx.direction = point_direction(x, y, player.x, player.y);
    else
        zx.direction = point_direction(x, y, 0, 0);
    zx.speed = 12;
    audio_play_sound(snd03_30, 0, false);
}