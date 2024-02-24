if !instance_exists(player) {instance_destroy(); exit;}
if patt <= 12-3*a {
    if x < player.x {x += 24;}
    if x > player.x {x -= 24;}
    var zx = instance_create_depth(x, y, dp, Boss03_11);
    zx.depth = 1-a*2;
    audio_play_sound(snd03_5, 0, false, world.sound_vol);
    zx = instance_create_depth(0, 0, 0, view_an1);
    zx.asdf = 10;
    patt += 1;
    alarm[0] = 4;
} else {
    instance_destroy();
}