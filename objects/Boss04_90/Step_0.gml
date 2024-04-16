if (place_meeting(x+hspeed, y, block)) { hspeed = -0.8*hspeed; rotation *= 0.8; x += hspeed;}
if (place_meeting(x, y+vspeed, block)) { vspeed = -0.5*vspeed; rotation *= 0.5; y += vspeed/2; }
else {vspeed += 0.4;}

image_angle += rotation;