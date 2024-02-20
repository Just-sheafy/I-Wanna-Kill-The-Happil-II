var len, dir, i, j, temp;

for(i=0; i<num; i+=1) {
	if (bl[i].move_to) {
		bl[i]._x += (bl[i].ox - bl[i]._x)/25;
		bl[i]._y += (bl[i].oy - bl[i]._y)/25;
	} else {
		bl[i]._x += lengthdir_x(bl[i]._spd, bl[i]._dir);
		bl[i]._y += lengthdir_y(bl[i]._spd, bl[i]._dir);
	}
}

if (patt <= 0) {
	if (_type == 0 or _type == 2) {
		temp = instance_create_depth(random_range(256, 544), random_range(160, 424), -7, Boss04_45);
		temp.scale = random_range(2,3);
		temp.speed = random(1);
		temp.direction = random(360);

		for(i=0; i<num; i+=1) {
			if (bl[i] != -1) bl[i].alpha = min(1, bl[i].alpha+0.05);
		}

		if (num < 300) {
		    repeat(10){
		        dir = random(360);
				bl[num] = {
					index : choose(0, 1, 2),
					alpha : 0,
					_x : 0,
					_y : 0,
					_spd : 0,
					_dir : 0,
					ox : 0,
					oy : 0,
					move_to : true
				};
				bl[num]._x = 400+lengthdir_x(200, dir);
				bl[num]._y = 400+lengthdir_y(200, dir);
		        j = choose(0, 1, 2, 3);
		        if (j == 0) {
		            bl[num].ox = random_range(400-96, 400-32);
		            bl[num].oy = 160+random(128);
		        } else if (j == 1) {
		            bl[num].ox = random_range(400+96, 400+32);
		            bl[num].oy = 160+random(128);
		        } else {
		            bl[num].ox = 400+random_range(-144, 144);
		            bl[num].oy = 304+random_range(sqrt(2*144*144-sqr(bl[num].ox-400))+32-144,
		                sqrt(4/3*144*144-sqr(bl[num].ox-400))+32-144/sqrt(3));
		        }
		        bl[num].ox = room_width/2 + (bl[num].ox-room_width/2) * 1.25;
		        bl[num].oy = room_height/2 + (bl[num].oy-room_height/2) * 1.25;
		        num += 1;
		    }
		}
	} else if (_type == 1 or _type == 3) {
	    temp = instance_create_depth(random_range(310, 490), random_range(214, 400), -7, Boss04_45);
	    temp.scale = random_range(1, 1.5);
	    temp.speed = random(0.8);
	    temp.direction = random(360);
	    len = 0.8*point_distance(400, 304, temp.x, temp.y);
	    dir = point_direction(400, 304, temp.x, temp.y);
	    temp.x = x + lengthdir_x(160, sid.image_angle+90) + lengthdir_x(len, dir+sid.image_angle);
	    temp.y = y + lengthdir_y(160, sid.image_angle+90) + lengthdir_y(len, dir+sid.image_angle);

		for(i=0; i<num; i+=1) {
			if (bl[i] != -1) bl[i].alpha = min(1, bl[i].alpha+0.05);
		}
    
	    if (num < 210) {
	        repeat(7){
				bl[num] = {
					index : choose(0, 1, 2),
					alpha : 0,
					_x : x,
					_y : y,
					_spd : 0,
					_dir : 0,
					ox : 0,
					oy : 0,
					move_to : true
				};
	            j = choose(0, 1, 2, 3);
	            if (j == 0) {
	                bl[num].ox = random_range(400-96, 400-32);
	                bl[num].oy = 160+random(128);
	            } else if (j == 1) {
	                bl[num].ox = random_range(400+96, 400+32);
	                bl[num].oy = 160+random(128);
	            } else {
	                bl[num].ox = 400+random_range(-144, 144);
	                bl[num].oy = 304+random_range(sqrt(2*144*144-sqr(bl[num].ox-400))+32-144,
	                    sqrt(4/3*144*144-sqr(bl[num].ox-400))+32-144/sqrt(3));
	            }
            
	            len = 0.8*point_distance(400, 304, bl[num].ox, bl[num].oy);
	            dir = point_direction(400, 304, bl[num].ox, bl[num].oy);
	            bl[num].ox = x + lengthdir_x(160, sid.image_angle+90) + lengthdir_x(len, dir+sid.image_angle);
	            bl[num].oy = y + lengthdir_y(160, sid.image_angle+90) + lengthdir_y(len, dir+sid.image_angle);
            
	            num += 1;
	        }
	    }	
	}
}

if (((_type == 1 or _type == 3) && patt == 3) || patt == 4) alpha = max(0, alpha-0.05);