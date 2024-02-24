if !a {
    a = true;
    vspeed = -4;
    audio_play_sound(sndBreak, 0, false, world.sound_vol);
    var zx = instance_create_depth(x, y, depth-1, Hamjung03B2);
    zx.sid = id;
}