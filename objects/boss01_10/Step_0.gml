image_alpha += 0.05;
if image_alpha >= 1 {image_alpha = 1;}
if y >= 576 {vspeed = -12;}
if x <= 0 {hspeed = abs(hspeed);}
if x >= 800 {hspeed = -abs(hspeed);}