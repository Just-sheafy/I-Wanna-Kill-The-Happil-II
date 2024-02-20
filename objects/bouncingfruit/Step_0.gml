if place_meeting(x+hspeed, y, block) or place_meeting(x+hspeed, y, platBlock) {
    hspeed *= -1;
}
if place_meeting(x, y+vspeed, block) or place_meeting(x, y+vspeed, platBlock) {
    vspeed *= -1;
}