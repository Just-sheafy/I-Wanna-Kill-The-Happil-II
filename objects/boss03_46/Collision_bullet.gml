if (!instance_exists(Boss03_h3)) exit;
with(other) {instance_destroy();}
if nothit {
    var zx = instance_create_depth(x, y, depth-1, BossB);
    zx.sid = id;
    zx.ox = -82;
    zx.oy = 30;
    zx.image_xscale = 3;
    zx.image_yscale = 3;
}
if !canhit or nothit {exit;}
with(Boss03_h3) {hp -= 1;}
audio_play_sound(sndBossHit, 0, false);
if !world.items[2] or !world.WASP_ok {
    canhit = 0;
    alarm[11] = 8;
}