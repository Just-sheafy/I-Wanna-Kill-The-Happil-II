with(other) {instance_destroy();}
if !canhit or nothit {exit;}
if !world.items[2] or !world.WASP_ok {
    canhit = 0;
    alarm[11] = 8;
}
if (shield_id.image_alpha > 0) {
    shield_id.image_alpha -= 0.3;
    shield_id.recover = 0;
} else {
    if Boss04_h2.nothit {var zx = instance_create_depth(x, y, depth-1, BossB2); zx.sid = id; zx.image_xscale = 3; zx.image_yscale = 3; exit;}
    with(Boss04_h2) {hp -= 10;}
    canhit = 0;
    alarm[11] = 200;
}

audio_play_sound(sndBossHit, 0, false, world.sound_vol);