if image_alpha < 1 {image_alpha += 0.05;}
a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 10), 1);
} else if hp < shp {
    shp += max(floor((hp - shp) / 10), -1);
    a = 1;
}

if hp <= 0 {
    instance_destroy();
    with(Boss01_h4) {instance_destroy();}
    with(Boss01_11) {instance_destroy();}
    audio_play_sound(sndDeath, 0, false);
    var zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
}