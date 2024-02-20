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
    instance_create_depth(0, 0, -100, light);
    with(Boss02_46) {alarm[0] = 0; alarm[1] = 0; alarm[2] = 8; alarm[3] = 120; speed = 0; asdf = 1; vspeed = 1;}
    with(Boss02_h8) {instance_destroy();}
    with(Boss02_47) {instance_destroy();}
    with(Boss02_48) {instance_destroy();}
    with(Boss02_49) {instance_destroy();}
    with(Boss02_52) {instance_destroy();}
    var zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
}