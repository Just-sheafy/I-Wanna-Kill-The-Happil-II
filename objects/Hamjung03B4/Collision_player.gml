if !a {
    a = true;
    vspeed = -4;
    audio_play_sound(sndBreak, 0, false);
    var zx = instance_create_depth(x, y, depth-1, Hamjung03B2);
    zx.sid = id;
}