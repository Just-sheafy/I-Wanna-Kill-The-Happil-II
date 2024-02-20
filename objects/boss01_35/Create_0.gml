depth = 3;

image_alpha = 0.2;
image_xscale = 2;
image_yscale = 2;
instance_create_depth(x, y, depth-1, Boss01_36);
short = instance_create_depth(x, y, depth-1, Boss01_37);
short.angle = (360-(current_hour * 30 + current_minute / 12)) mod 360;
long = instance_create_depth(x, y, depth-1, Boss01_37);
long.image_index = 1;
long.angle = (360-(current_minute * 6)) mod 360;

pink = (short.angle-irandom_range(250, 550)*0.1) mod 360;
yellow = (short.angle-irandom_range(350, 600)*0.1) mod 360;
blue = (long.angle-irandom_range(200, 500)*0.4) mod 360;
red = (long.angle-irandom_range(150, 300)*0.4) mod 360;

pink_available = true;
yellow_available = true;
blue_available = true;
red_available = true;