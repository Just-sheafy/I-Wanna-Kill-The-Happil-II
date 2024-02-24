if (!instance_exists(player)) exit;

if (patt < 6) {
    var a = instance_create_depth(x+80, y-64, -2, Boss01_14);
    a.direction = point_direction(x+80, y-64, player.x, player.y);
    a.speed = 5;
    audio_play_sound(snd01_1, 0, false, world.sound_vol);
    patt += 1;
    alarm[2] = 200;
} else if (patt == 6) {
    var a = instance_create_depth(x, y-64, -2, Boss01_2);
    a.hspeed = (player.x-x)/35;
    a.gravity = 0.05;
    alarm[2] = 30;
}