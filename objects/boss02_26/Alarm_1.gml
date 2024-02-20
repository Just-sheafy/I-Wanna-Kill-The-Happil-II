asdf = floor(random(90)+5)*8;
if x == asdf {if x != 400 {asdf = 400;} else {asdf = choose(440, 360);}}
if x > asdf {hspeed = -8; alarm[2] = (x-asdf)/8;}
if x < asdf {hspeed = 8; alarm[2] = (asdf-x)/8;}