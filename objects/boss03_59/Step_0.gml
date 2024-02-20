d += 1.5;
y = 304+244*sin(degtorad(d));
if b == 0 {if a < 0.5 {a += 0.02;} else {b = 1;}}
if place_meeting(x, y, Boss03_52) {
    if c {c = 0; audio_play_sound(sndBossHit, 0, false);}
    Boss03_h5.hp -= 1;
    a = 0.2;
} else {
    c = 1;
    if b {a = 0.5;}
}
image_alpha = random_range(a, a+0.3);