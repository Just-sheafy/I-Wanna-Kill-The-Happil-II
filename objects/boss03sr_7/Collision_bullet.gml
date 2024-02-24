if (nohit) exit;

with(other) {instance_destroy();}
audio_play_sound(sndBossHit, 0, false, world.sound_vol);
hp -= 1;
instance_create_depth(x, y, -1, Boss03Sr_9);
if hp <= 0 {
    if (!revive) {
        instance_destroy();
        audio_play_sound(sndDeath, 0, false, world.sound_vol);
        instance_create_depth(x, y, -1, Boss03Sr_12);
    } else {
        alarm[0] = irandom_range(750, 1000);
        nohit = true;
        alarm[1] = 250;
    }
}