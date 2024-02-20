var i, zx;

if image_alpha < 1 {image_alpha += 0.05;}
a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 10), 12);
} else if hp < shp {
    shp += max(floor((hp - shp) / 10), -12);
    a = 1;
}

if hp <= 0 {
    instance_destroy();
    instance_create_depth(0, 0, -100, light);
    with(Boss03_h6) {instance_destroy();}
    with(Boss03_46) {for(i=0; i<6; i+=1) {alarm[i] = 0;}}
    with(Boss03_59) {instance_destroy(); var zx = instance_create_depth(x, y, -3, Boss03_dead2);}
    zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
}