image_speed = 0;

if place_meeting(x, y, sendRight) {
    hspeed = 4;
} else if place_meeting(x, y, sendLeft) {
    hspeed = -4;
}

if place_meeting(x, y, sendDown) {
    vspeed = 4;
} else if place_meeting(x, y, sendUp) {
    vspeed = -4;
}