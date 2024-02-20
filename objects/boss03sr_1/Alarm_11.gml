if a11-2*floor(a11/2) {
    image_alpha = 1;
} else {
    image_alpha = 0.3;
}
a11 -= 1;
if a11 == 0 {alarm[11] = 0;} else {alarm[11] = 8;}