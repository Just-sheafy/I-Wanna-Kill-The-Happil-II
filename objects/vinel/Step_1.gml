x += hspd;
y += vspd;
if place_meeting(x+hspd, y, vineD) {hspd *= -1;}
if place_meeting(x, y+vspd, vineD) {vspd *= -1;}