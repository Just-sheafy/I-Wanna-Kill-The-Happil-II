if (!world.SI_ok or room == Stage02Bs3 or room == Stage02Bs4 or room == Stage04Bs4) {instance_destroy(); exit;}

if place_meeting(x-80,y-80,player) or place_meeting(x-80,y+80,player) or place_meeting(x,y,player) {image_alpha-=0.05;}
else {image_alpha+=0.05;}
if image_alpha <= 0.2 {image_alpha = 0.2;}
if image_alpha >= 1 {image_alpha = 1;}