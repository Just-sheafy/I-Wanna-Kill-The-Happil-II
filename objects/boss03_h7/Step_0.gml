if image_alpha < 1 {image_alpha += 0.05;}
a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 10), 2);
} else if hp < shp {
    shp += max(floor((hp - shp) / 10), -2);
    a = 1;
}

if hp <= 150 and up == 0 {
    up += 1;
    with(Boss03_77) {b = 1;}
}

if hp <= 100 and up == 1 {
    up += 1;
    with(Boss03_77) {alarm[1] = 25;}
}

if hp <= 50 and up == 2 {
    up += 1;
    with(Boss03_77) {a = 1;}
}

if hp <= 0 {
    instance_destroy();
    instance_create_depth(0, 0, -100, light);
    var zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 30;
    with(Boss03_h8) {instance_destroy();}
    with(Boss03_8) {instance_destroy();}
    with(Boss03_72) {instance_destroy();}
    with(Boss03_78) {instance_destroy();}
    with(Boss03_79) {instance_destroy();}
    with(Boss03_77) {
        alarm[0] = 0;
        alarm[1] = 0;
        alarm[2] = 5;
        alarm[3] = 5;
        friction = 0.2;
        b = 0;
    }
    with(world) {
        audio_stop_sound(Instance);
        filePlaying = -1;
        curMusic = global.Silent;
        Instance = audio_play_sound(curMusic, 10, true, world.music_vol);
    }
    zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
}