if image_alpha < 1 {image_alpha += 0.05;}
a = 0;
if hp > shp {
    shp += min(ceil((hp - shp) / 10), 5);
} else if hp < shp {
    shp += max(floor((hp - shp) / 10), -5);
    a = 1;
}

if (hp <= hpm/2 and !nothit_temp) {
    with(hbar) {sprite_index = sprBoss03_h4;}
    if (room != Stage04Bs4) nothit = true;
    nothit_temp = true;
}

if hp <= 0 {
    instance_destroy();
    instance_create_depth(0, 0, -100, light);
    with(hbar) {instance_destroy();}
    var zx = instance_create_depth(x, y, depth, Boss_h);
    zx.sprite_index = sprite_index;
	zx.c = false;
    
    room_speed = global.ROOM_SPEED * 35 / 50;
    with(Boss04_3) {
        instance_destroy();
        with(shield_id) instance_destroy();
        var temp = instance_create_depth(x + 36*cos(degtorad(image_angle-45)),
            y - 36*sin(degtorad(image_angle-45)), depth, Boss04_28);
        temp.image_index = 1;
        temp.hspeed = 1; temp.vspeed = -4;
        if (instance_exists(player)) temp.vspeed *= 2*player.Gravity-1;
    }
    with(Boss02_8) event_perform(ev_alarm, 0);
    with(Boss04_8) {
        if (!instance_exists(tracking_obj)) instance_destroy();
    }
    with(Boss04_11) instance_destroy();
    with(Boss04_16) instance_destroy();
    audio_play_sound(snd04_27, 0, false, world.sound_vol);
}