if x <= 0 {hspeed = abs(hspeed);}
if x >= 800 {hspeed = -abs(hspeed);}
if y <= 0 {vspeed = abs(vspeed);}
if y >= 608 {vspeed = -abs(vspeed);}
image_xscale = sign(hspeed);