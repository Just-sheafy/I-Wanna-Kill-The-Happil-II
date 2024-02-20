if x <= 44 {x -= hspeed; hspeed = abs(hspeed);}
if x >= 756 {x -= hspeed; hspeed = -abs(hspeed);}
if place_meeting(x, y+vspeed, block) {y -= vspeed; vspeed = a;}