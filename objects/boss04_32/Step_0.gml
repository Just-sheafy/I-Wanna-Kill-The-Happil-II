if (image_alpha < 1) image_alpha += 0.05;

index = (index + 1) mod 32;

if (vspeed >= maxFallSpeed) vspeed = maxFallSpeed;
if (place_meeting(x, y+1, block)) {
	if (sprite_index != sprPlayerIdle and sprite_index != sprPlayerRunning) alarm[11] = 20;
    sprite_index = sprPlayerIdle; image_speed = 1/5;
    vspeed = 0; gravity = 0;
    while(place_meeting(x, y, block)) y -= 1;
	
	if (instance_exists(player)) {
		if (player.x > x+108) {
			sprite_index = sprPlayerRunning;
			image_xscale = 1; x += 1;
		} else if (player.x < x-108) {
			sprite_index = sprPlayerRunning;
			image_xscale = -1; x -= 1;
		}
	}
}

if (!instance_exists(player)) {
    if (Instance != -1) {audio_stop_sound(Instance); Instance = -1;}
}

if (patt >= 3) {
    with(objCl1) {image_alpha = max(0, image_alpha-0.01);}
    with(objCl2) {image_alpha = max(0, image_alpha-0.01);}
    with(objCl3) {image_alpha = max(0, image_alpha-0.01);}
}

if (patt >= 3 and num < 800) {
    var i, j;
    
    for(i=num; i<num+8; i+=1) {
        if (bl[i] != -1 and instance_exists(bl[i])) {
            j = choose(0, 1, 2, 3);
            bl[i].move_to = true;
            bl[i].sid = -1;
            if (j == 0) {
                bl[i].ox = random_range(400-96, 400-32);
                bl[i].oy = 160+128*num/800+random(128/100);
            } else if (j == 1) {
                bl[i].ox = random_range(400+96, 400+32);
                bl[i].oy = 160+128*num/800+random(128/100);
            } else {
                bl[i].ox = 400+random_range(-144, 144);
                bl[i].oy = 304+random_range(sqrt(2*144*144-sqr(bl[i].ox-400))+32-144,
                    sqrt(4/3*144*144-sqr(bl[i].ox-400))+32-144/sqrt(3));
            }
        }
    }
    num += 8;
}

if (death) {
    repeat(40){
      bl[num] = instance_create_depth(x,y,-3,Boss04_33);
      bl[num].direction = irandom(36)*5;
      bl[num].speed = random_range(2, 12);
      num += 1;
    }
}