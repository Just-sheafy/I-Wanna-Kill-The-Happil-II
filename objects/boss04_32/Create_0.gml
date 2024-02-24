var i;

image_speed = 1/2;
image_alpha = 0;

gravity = 0.4;
maxFallSpeed = 8;
death = false;
num = 0;
patt = 0;
alpha = 0;
index = 0;
Instance = -1;

player_x = 0;
player_y = 0;
spr_before = sprPlayerIdle;
img_before = 0;

for(i=0; i<800; i+=1) {
    bl[i] = -1;
}