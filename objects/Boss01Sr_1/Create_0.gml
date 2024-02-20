var i, j;

index = 0;
ready = true;
ready_time = 0;
is_dead = false;
skip = true;

ROW = 4;
COLUMN = 4;
ox = 400;
oy = 512;
CX = 400;
CY = 512;
t = 0;

AIM = -1;
check_AIM = true;
scale_AIM = 0;
NUM_gen = 1;
prob = 1/3;

check = true;
scale = 0;
move = 1;
mode = 0; // 0: square, 1: hexagon
list_move = ds_list_create();
list_input_buffer = ds_list_create();

surf_back = -1;
surf_scale = 1;
for(i=0; i<COLUMN; i+=1) {
	for(j=0; j<ROW; j+=1) {
		number[i, j] = 0; // -1: empty space, 0: space, 0.5: locked
		number_changed[i, j] = 0; // 0: no change, 1: generated, 2: combined, 3: changed
		surf[i, j] = -1;
	}
}

col[0] = make_color_rgb(191, 176, 161);
col[1] = make_color_rgb(238, 228, 218);
col[2] = make_color_rgb(237, 224, 200);
col[3] = make_color_rgb(242, 177, 121);
col[4] = make_color_rgb(245, 149, 99);
col[5] = make_color_rgb(246, 124, 95);
col[6] = make_color_rgb(246, 94, 59);
col[7] = make_color_rgb(237, 207, 114);
col[8] = make_color_rgb(237, 204, 97);
col[9] = make_color_rgb(237, 200, 80);
col[10] = make_color_rgb(237, 197, 63);
col[11] = make_color_rgb(237, 194, 46);
col[12] = make_color_rgb(62, 57, 51); // 4096~

function clear() {
	var i, j;
	
	for(i=0; i<COLUMN; i+=1) {
		for(j=0; j<ROW; j+=1) {
			if (number[i, j] > 0) number[i, j] = 0;
			number_changed[i, j] = 0;
		}
	}
	
	generate();
	generate();
}

function generate(p = 1/3, NUM = 1) {
	var i, j, l = ds_list_create();
	
	repeat(floor(random_range(1, NUM))) {
		for(i=0; i<COLUMN; i+=1) {
			for(j=0; j<ROW; j+=1) {
				if (number[i, j] == 0) ds_list_add(l, i*ROW+j);
			}
		}
	
		if (ds_list_size(l) > 0) {
			ds_list_shuffle(l);
			i = ds_list_find_value(l, 0) div ROW;
			j = ds_list_find_value(l, 0) mod ROW;
			if (AIM <= 6) number[i, j] = 1+(random(1) < p);
			else if (AIM <= 8) number[i, j] = 1+(random(1) < p)+(random(1) < p*p);
			else if (AIM <= 9) number[i, j] = 2+(random(1) < p*p)+(random(1) < p*p);
			else number[i, j] = 2+(random(1) < p)+(random(1) < p*p)+(random(1) < p*p*p);
			number_changed[i, j] = 1;
		}
	}
	
	ds_list_destroy(l);
}

function lose(NUM = 1) {
	// 1: lose the lowest number; -1: half among them
	
	var zx, num, num2, i, j, s, t, xx, yy, l = ds_list_create(), l2 = ds_list_create();
	
	for(i=0; i<COLUMN; i+=1) {
		for(j=0; j<ROW; j+=1) {
			if (number[i, j] > 0) ds_list_add(l2, i*ROW+j);
		}
	}
	ds_list_shuffle(l2);
	
	while(ds_list_size(l2) > 0) {
		num = ds_list_find_value(l2, 0);
		s = floor(num/ROW);
		t = num - s*ROW;
		
		num = 0;
		while(num < ds_list_size(l)) {
			num2 = ds_list_find_value(l, num);
			i = floor(num2/ROW);
			j = num2 - i*ROW;
			if (number[s, t] < number[i, j]) break;
			num += 1;
		}
		ds_list_insert(l, num, s*ROW+t);
		ds_list_delete(l2, 0);
	}
	
	if (NUM > 0) {
		while(ds_list_size(l) > NUM) {
			ds_list_delete(l, ds_list_size(l)-1);
		}
	} else {
		s = ds_list_size(l);
		while(ds_list_size(l) > floor(s/2)) {
			ds_list_delete(l, ds_list_size(l)-1);
		}
	}
	
	s = ds_list_size(l);
	for(t=0; t<ds_list_size(l); t+=1) {
		num = ds_list_find_value(l, t);
		i = floor(num/ROW);
		j = num - i*ROW;
			
		if (mode == 0)
			zx = instance_create_depth(CX+40*(-COLUMN/2+i+1/2), CY+40*(-ROW/2+j+1/2), -11, Boss01Sr_3);
		else zx = instance_create_depth(CX+(-COLUMN+1+i+j)*sqrt(3)/4*42,
			CY+(-i+j)*3/4*42, -11, Boss01Sr_3);
		zx.angle = random_range(-15, 15);
		zx.mode = mode;
		zx.canhit = false;
		zx.num = number[i, j];
		zx.col = col[min(number[i, j], 12)];
		number[i, j] = 0;
		
		if (instance_exists(player) && NUM > 0) {
			xx = player.x+random_range(-50, 50);
			yy = player.y;
		} else {
			xx = 128 + 544/s*t + random(544/s);
			yy = 384;
		}
		zx.vspeed = random_range(-2, 3);
		zx.gravity = random_range(0.1, 0.25);
		if (yy > 0) zx.hspeed = (xx-zx.x)/sqrt(abs((yy-(zx.y-608-64)+sqr(zx.vspeed)/2/zx.gravity)*2/zx.gravity));
	}
	
	num = 0;
	for(i=0; i<COLUMN; i+=1) {
		for(j=0; j<ROW; j+=1) {
			if (number[i, j] > 0) num += 1;
		}
	}
	if (num == 0) generate(prob, NUM_gen);
	
	ds_list_destroy(l);
	ds_list_destroy(l2);
}


#region Square

function goUp(is_move = true) {
	var i, j, jj, temp = false;
	
	for(j=0; j<ROW; j+=1) {
		for(i=0; i<COLUMN; i+=1) {
			if (number[i, j] <= 0) continue;
			if (j == 0) {
				if (is_move) ds_list_add(list_move, { num : number[i, j],
					from_x : i, from_y : j, to_x : i, to_y : j } );
				continue;
			}
			
			jj = j-1;
			while(jj >= 0 && number[i, jj] == 0) jj -= 1;
			
			if (!is_move) {
				if (jj < 0 || (number[i, jj] == number[i, j] && number_changed[i, jj] != 2) || jj < j-1) return true;
				else continue;
			}
			
			if (jj < 0) {
				number[i, 0] = number[i, j];
				number_changed[i, 0] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : 0 } );
				number[i, j] = 0;
				temp = true;
			} else if (number[i, jj] == number[i, j] && number_changed[i, jj] != 2) {
				// if not combined
				number[i, jj] += 1;
				number_changed[i, jj] = 2;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : jj } );
				number[i, j] = 0;
				temp = true;
			} else if (jj < j-1) {
				number[i, jj+1] = number[i, j];
				number_changed[i, jj+1] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : jj+1 } );
				number[i, j] = 0;
				temp = true;
			} else ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : j } );
		}
	}
	if (temp) generate(prob, NUM_gen);
	
	return temp;
}

function goDown(is_move = true) {
	var i, j, jj, temp = false;
	
	for(j=ROW-1; j>=0; j-=1) {
		for(i=0; i<COLUMN; i+=1) {
			if (number[i, j] <= 0) continue;
			if (j == ROW-1) {
				if (is_move) ds_list_add(list_move, { num : number[i, j],
					from_x : i, from_y : j, to_x : i, to_y : j } );
				continue;
			}
			
			jj = j+1;
			while(jj <= ROW-1 && number[i, jj] == 0) jj += 1;
			
			if (!is_move) {
				if (jj >= ROW || (number[i, jj] == number[i, j] && number_changed[i, jj] != 2) || jj > j+1) return true;
				else continue;
			}
			
			if (jj >= ROW) {
				number[i, ROW-1] = number[i, j];
				number_changed[i, ROW-1] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : ROW-1 } );
				number[i, j] = 0;
				temp = true;
			} else if (number[i, jj] == number[i, j] && number_changed[i, jj] != 2) {
				// if not combined
				number[i, jj] += 1;
				number_changed[i, jj] = 2;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : jj } );
				number[i, j] = 0;
				temp = true;
			} else if (jj > j+1) {
				number[i, jj-1] = number[i, j];
				number_changed[i, jj-1] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : jj-1 } );
				number[i, j] = 0;
				temp = true;
			} else ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : j } );
		}
	}
	if (temp) generate(prob, NUM_gen);
	
	return temp;
}

function goLeft(is_move = true) {
	var i, j, ii, temp = false;
	
	for(i=0; i<COLUMN; i+=1) {
		for(j=0; j<ROW; j+=1) {
			if (number[i, j] <= 0) continue;
			if (i == 0) {
				if (is_move) ds_list_add(list_move, { num : number[i, j],
					from_x : i, from_y : j, to_x : i, to_y : j } );
				continue;
			}
			
			ii = i-1;
			while(ii >= 0 && number[ii, j] == 0) ii -= 1;
			
			if (!is_move) {
				if (ii < 0 || (number[ii, j] == number[i, j] && number_changed[ii, j] != 2) || ii < i-1) return true;
				else continue;
			}
			
			if (ii < 0) {
				number[0, j] = number[i, j];
				number_changed[0, j] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : 0, to_y : j } );
				number[i, j] = 0;
				temp = true;
			} else if (number[ii, j] == number[i, j] && number_changed[ii, j] != 2) {
				// if not combined
				number[ii, j] += 1;
				number_changed[ii, j] = 2;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : ii, to_y : j } );
				number[i, j] = 0;
				temp = true;
			} else if (ii < i-1) {
				number[ii+1, j] = number[i, j];
				number_changed[ii+1, j] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : ii+1, to_y : j } );
				number[i, j] = 0;
				temp = true;
			} else ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : j } );
		}
	}
	if (temp) generate(prob, NUM_gen);
	
	return temp;
}

function goRight(is_move = true) {
	var i, j, ii, temp = false;
	
	for(i=COLUMN-1; i>=0; i-=1) {
		for(j=0; j<ROW; j+=1) {
			if (number[i, j] <= 0) continue;
			if (i == COLUMN-1) {
				if (is_move) ds_list_add(list_move, { num : number[i, j],
					from_x : i, from_y : j, to_x : i, to_y : j } );
				continue;
			}
			
			ii = i+1;
			while(ii <= COLUMN-1 && number[ii, j] == 0) ii += 1;
			
			if (!is_move) {
				if (ii >= COLUMN || (number[ii, j] == number[i, j] && number_changed[ii, j] != 2) || ii > i+1) return true;
				else continue;
			}
			
			
			if (ii >= COLUMN) {
				number[COLUMN-1, j] = number[i, j];
				number_changed[COLUMN-1, j] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : COLUMN-1, to_y : j } );
				number[i, j] = 0;
				temp = true;
			} else if (number[ii, j] == number[i, j] && number_changed[ii, j] != 2) {
				// if not combined
				number[ii, j] += 1;
				number_changed[ii, j] = 2;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : ii, to_y : j } );
				number[i, j] = 0;
				temp = true;
			} else if (ii > i+1) {
				number[ii-1, j] = number[i, j];
				number_changed[ii-1, j] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : ii-1, to_y : j } );
				number[i, j] = 0;
				temp = true;
			} else ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : j } );
		}
	}
	if (temp) generate(prob, NUM_gen);
	
	return temp;
}

#endregion


#region Hexagon

function draw_hexagon(x, y, r, angle, outline) {
	var i;
	
	if (!outline) {
		for(i=0; i<6; i+=1) {
			draw_triangle(x, y, x+lengthdir_x(r, i*60+angle), y+lengthdir_y(r, i*60+angle),
				x+lengthdir_x(r, (i+1)*60+angle), y+lengthdir_y(r, (i+1)*60+angle), false);
		}
	} else {
		for(i=0; i<6; i+=1) {
			draw_line(x+lengthdir_x(r, i*60+angle), y+lengthdir_y(r, i*60+angle),
				x+lengthdir_x(r, (i+1)*60+angle), y+lengthdir_y(r, (i+1)*60+angle));
		}
	}
}

function goLeftHex(is_move = true) {
	var i, j, ii, jj, temp = false;
	
	for(i=0; i<COLUMN; i+=1) {
		for(j=0; j<ROW; j+=1) {
			if (number[i, j] <= 0) continue;
			if (i == 0 || j == 0) {
				if (is_move) ds_list_add(list_move, { num : number[i, j],
					from_x : i, from_y : j, to_x : i, to_y : j } );
				continue;
			}
			
			ii = i-1;
			jj = j-1;
			while(ii >= 0 && jj >= 0 && number[ii, jj] == 0) { ii -= 1; jj -= 1; }
			
			if (!is_move) {
				if (ii < 0 || jj < 0 || (number[ii, jj] == number[i, j] && number_changed[ii, jj] != 2) || ii < i-1) return true;
				else continue;
			}
			
			if (ii < 0 || jj < 0) {
				number[ii+1, jj+1] = number[i, j];
				number_changed[ii+1, jj+1] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : ii+1, to_y : jj+1 } );
				number[i, j] = 0;
				temp = true;
			} else if (number[ii, jj] == number[i, j] && number_changed[ii, jj] != 2) {
				// if not combined
				number[ii, jj] += 1;
				number_changed[ii, jj] = 2;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : ii, to_y : jj } );
				number[i, j] = 0;
				temp = true;
			} else if (ii < i-1) {
				number[ii+1, jj+1] = number[i, j];
				number_changed[ii+1, jj+1] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : ii+1, to_y : jj+1 } );
				number[i, j] = 0;
				temp = true;
			} else ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : j } );
		}
	}
	if (temp) generate(prob, NUM_gen);
	
	return temp;
}

function goRightHex(is_move = true) {
	var i, j, ii, jj, temp = false;
	
	for(i=COLUMN-1; i>=0; i-=1) {
		for(j=ROW-1; j>=0; j-=1) {
			if (number[i, j] <= 0) continue;
			if (i == COLUMN-1 || j == ROW-1) {
				if (is_move) ds_list_add(list_move, { num : number[i, j],
					from_x : i, from_y : j, to_x : i, to_y : j } );
				continue;
			}
			
			ii = i+1;
			jj = j+1;
			while(ii <= COLUMN-1 && jj <= ROW-1 && number[ii, jj] == 0) { ii += 1; jj += 1; }
			
			if (!is_move) {
				if (ii >= COLUMN || jj >= ROW || (number[ii, jj] == number[i, j] && number_changed[ii, jj] != 2) || ii > i+1) return true;
				else continue;
			}
			
			if (ii >= COLUMN || jj >= ROW) {
				number[ii-1, jj-1] = number[i, j];
				number_changed[ii-1, jj-1] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : ii-1, to_y : jj-1 } );
				number[i, j] = 0;
				temp = true;
			} else if (number[ii, jj] == number[i, j] && number_changed[ii, jj] != 2) {
				// if not combined
				number[ii, jj] += 1;
				number_changed[ii, jj] = 2;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : ii, to_y : jj } );
				number[i, j] = 0;
				temp = true;
			} else if (ii > i+1) {
				number[ii-1, jj-1] = number[i, j];
				number_changed[ii-1, jj-1] = 3;
				ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : ii-1, to_y : jj-1 } );
				number[i, j] = 0;
				temp = true;
			} else ds_list_add(list_move, { num : number[i, j], from_x : i, from_y : j, to_x : i, to_y : j } );
		}
	}
	if (temp) generate(prob, NUM_gen);
	
	return temp;
}

#endregion