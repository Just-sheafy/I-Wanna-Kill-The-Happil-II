if ang == 0 {
    if image_alpha < 1 {image_alpha += 0.05;} else {hspeed = sign(image_xscale)*2; ang = 1;}
} else if ang == 1 {
    if hp <= 0 {hspeed = 0; ang = 2; audio_play_sound(sndSpikeTrap, 0, false, world.sound_vol);}
} else if ang == 2 {
    image_angle += sign(image_xscale)*5;
    if image_angle < 0 {image_angle += 360;}
    if image_angle == 90 or image_angle == 270 {ang = 3; vspeed = -4;}
}