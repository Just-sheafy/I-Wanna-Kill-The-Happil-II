if nothit {var zx = instance_create_depth(x, y, depth-1, BossB); zx.sid = id; zx.image_xscale = 3; zx.image_yscale = 3;}
with(other) {instance_destroy();}
if !canhit or nothit {exit;}
with(Boss03_h) {hp -= 1;}
audio_play_sound(sndBossHit, 0, false);
if !world.items[2] or !world.WASP_ok {
    canhit = 0;
    alarm[11] = 8;
}