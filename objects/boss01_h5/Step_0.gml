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
    with(Boss01_h6) {instance_destroy();}
    with(Boss01_11) {alarm[0] += 25; alarm[1] += 25; alarm[2] += 25;}
    with(Boss01_12) {instance_destroy();}
    with(fruit) {disappear = true;}
    audio_play_sound(sndDeath, 0, false);
    var zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
}