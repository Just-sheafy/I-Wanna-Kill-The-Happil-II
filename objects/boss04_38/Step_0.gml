if (patt == 0) {
    if (image_alpha < 1) {
        image_alpha += 0.02; _scale -= 0.01;
    } else patt += 1;
} else if (patt == 1) {
    if (scale > -1) scale -= 0.1;
    else patt += 1;
    if (scale == 0) audio_play_sound(snd04_33, 0, false);
} else if (patt < 27) {
    patt += 1;
} else {
    if (image_alpha > 0) {
        image_alpha -= 0.05; _scale += 0.02;
    } else instance_destroy();
}