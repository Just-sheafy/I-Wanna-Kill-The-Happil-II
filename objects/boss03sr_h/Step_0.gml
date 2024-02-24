if image_alpha < 1 {image_alpha += 0.05;}
a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 10), 2);
} else if hp < shp {
    shp += max(floor((hp - shp) / 10), -2);
    a = 1;
}

if hp <= 0 {
    instance_destroy();
    instance_create_depth(0, 0, -100, light);
    with(dark5) {instance_destroy();}
    
    with(spikeUp) {instance_destroy();}
    with(Boss03Sr_4) {instance_destroy();}
    
    with(Boss03Sr_1) {
        instance_destroy();
        var bsq = instance_create_depth(x, y, depth, bloodSquirt);
        bsq.xx = x;
        bsq.yy = y;
        bsq.Gravity = 1;
    }
    with(Boss03Sr_4) {instance_destroy();}
    with(Boss03Sr_5) {instance_destroy();}
    with(Boss03Sr_11) {instance_destroy();}
    with(Boss03Sr_13) {instance_destroy();}
    with(Boss03Sr_2) {instance_destroy();}
    with(Boss03Sr_7) {instance_destroy();}
    with(Boss03Sr_15) {instance_destroy();}
    with(Boss03Sr_16) {instance_destroy();}
    with(Boss03Sr_17) {instance_destroy();}
    
    instance_create_depth(0, 0, -15, dark6);
    
    audio_play_sound(sndDeath, 0, false, world.sound_vol);
    Instance = audio_play_sound(sndSr03_3, 0, false, world.sound_vol);
	audio_sound_pitch(Instance, 0.75);
    
    with(world) {audio_stop_sound(Instance);}
    with(Boss03Sr_h2) {instance_destroy();}
    var zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
}