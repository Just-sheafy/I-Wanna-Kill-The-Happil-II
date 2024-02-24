if active {
    image_angle -= 5;
    if image_alpha < 1 {image_alpha += 0.05;}
    visible = true;
    if a {a = 0; audio_play_sound(sndWarp, 0, false, world.sound_vol);}
}