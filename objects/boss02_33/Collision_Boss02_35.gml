if other.a and image_speed == 0 {
    Boss02_h.hp -= 10;
    with(Boss02_73) {active = true; hp -= 1;}
    sprite_index = sprBoss02_76; image_speed = 1/5;
    audio_play_sound(sndBossHit, 0, false);
    instance_create_depth(0, 0, -100, light);
    var zx = instance_create_depth(0, 0, 0, view_an2);
    zx.asdf = 8;
}