if image_alpha < 1 {image_alpha += 0.05;}
a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 10), 1);
} else if hp < shp {
    shp += max(floor((hp - shp) / 10), -1);
    a = 1;
}

if hp <= 0 {
    with(Boss02_33) {
        alarm[0] = 0; alarm[1] = 0; alarm[2] = 0;
        image_speed = 1/3;
        vspeed = -32;
        alarm[3] = 20;
    }
    instance_destroy();
    instance_create_depth(0, 0, -100, light);
    with(Boss02_h2) {instance_destroy();}
    var zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
}