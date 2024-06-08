if (!instance_exists(player)) {
    alarm[0] = 0; exit;
}

var i, zx;

patt += 1;

if (patt == 25) {
    for(i=0; i<25; i+=1) {
        zx = instance_create_depth(moux, mouy, -4, fruit);
        zx.sprite_index = sprFruitP;
        zx.direction = 360/25*i+random(360/25);
        zx.speed = random_range(6, 8);
        zx = instance_create_depth(moux, mouy, -4, fruit);
        zx.sprite_index = sprFruitGr;
        zx.direction = random(360);
        zx.speed = random_range(4, 6);
    }
    instance_create_depth(0, 0, -5, Boss02_70);
    for(i=0; i<20; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 30;
    }
} else if (patt == 55) {
    for(i=0; i<7; i+=1) {
        zx = instance_create_depth(hanlx, hanly, -4, fruit);
        zx.sprite_index = sprFruitP;
        zx.direction = 360/7*i+random(360/7);
        zx.speed = random_range(6, 8);
    }
    with(Boss02_70) {instance_destroy();}
    for(i=0; i<15; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 5;
    }
} else if (patt == 60) {
    for(i=0; i<7; i+=1) {
        zx = instance_create_depth(hanrx, hanry, -4, fruit);
        zx.sprite_index = sprFruitGr;
        zx.direction = 360/7*i+random(360/7);
        zx.speed = random_range(6, 8);
    }
    instance_create_depth(0, 0, -5, Boss02_70);
    for(i=0; i<20; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 15;
    }
} else if (patt == 75) {
    for(i=0; i<7; i+=1) {
        zx = instance_create_depth(hanlx, hanly, -4, fruit);
        zx.sprite_index = sprFruitP;
        zx.direction = 360/7*i+random(360/7);
        zx.speed = random_range(6, 8);
    }
    with(Boss02_70) {instance_destroy();}
    for(i=0; i<15; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 5;
    }
} else if (patt == 80) {
    for(i=0; i<7; i+=1) {
        zx = instance_create_depth(hanrx, hanry, -4, fruit);
        zx.sprite_index = sprFruitGr;
        zx.direction = 360/7*i+random(360/7);
        zx.speed = random_range(6, 8);
    }
    instance_create_depth(0, 0, -5, Boss02_70);
    for(i=0; i<30; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 5;
    }
} else if (patt == 85) {
    for(i=0; i<7; i+=1) {
        zx = instance_create_depth(hanlx, hanly, -4, fruit);
        zx.sprite_index = sprFruitP;
        zx.direction = 360/7*i+random(360/7);
        zx.speed = random_range(6, 8);
    }
    with(Boss02_70) {instance_destroy();}
    for(i=0; i<15; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 5;
    }
} else if (patt == 90) {
    for(i=0; i<7; i+=1) {
        zx = instance_create_depth(hanrx, hanry, -4, fruit);
        zx.sprite_index = sprFruitGr;
        zx.direction = 360/7*i+random(360/7);
        zx.speed = random_range(6, 8);
    }
    instance_create_depth(0, 0, -5, Boss02_70);
    for(i=0; i<20; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 5;
    }
} else if (patt == 95) {
    for(i=0; i<7; i+=1) {
        zx = instance_create_depth(hanlx, hanly, -4, fruit);
        zx.sprite_index = sprFruitP;
        zx.direction = 360/7*i+random(360/7);
        zx.speed = random_range(6, 8);
    }
    with(Boss02_70) {instance_destroy();}
    for(i=0; i<20; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 5;
    }
} else if (patt == 100) {
    for(i=0; i<7; i+=1) {
        zx = instance_create_depth(hanrx, hanry, -4, fruit);
        zx.sprite_index = sprFruitGr;
        zx.direction = 360/7*i+random(360/7);
        zx.speed = random_range(6, 8);
    }
    instance_create_depth(0, 0, -5, Boss02_70);
    for(i=0; i<25; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 5;
    }
    
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 105) {
    for(i=0; i<7; i+=1) {
        zx = instance_create_depth(hanrx, hanry, -4, fruit);
        zx.sprite_index = sprFruitGr;
        zx.direction = 360/7*i+random(360/7);
        zx.speed = random_range(6, 8);
    }
    for(i=0; i<15; i+=1) {
        zx = instance_create_depth(hanlx, hanly, -4, fruit);
        zx.sprite_index = sprFruitP;
        zx.direction = 360/15*i+random(360/15);
        zx.speed = random_range(6, 8);
    }
    with(Boss02_70) {instance_destroy();}
    for(i=0; i<25; i+=1) {
        zx = instance_create_depth(0, 0, 0, view_an1);
        zx.asdf = 15;
    }
} else if (patt == 150) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 200) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 250) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 300) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 350) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 400) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 450) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 500) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 550) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 600) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 650) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 700) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 750) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 800) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 850) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 950) {
    instance_create_depth(0, 0, 0, Boss02F4);
} else if (patt == 1600) {
	with(Boss02F4) alarm[1] = 0;
} else if (patt == 1700) {
	if (global.practice == 10) {
		with(player) { instance_destroy(); }
		with(world) {
			warn = 0;
			hp_before = -1;
			var_temp = 0;
			audio_stop_channel(1);
			audio_stop_channel(2);
			music_speed = 1;
			music_sp = 1;
			audio_resume_sound(Instance);
		}
		room_goto(Stage02Bs);
		exit;
	}
	
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 1750) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
    with(Boss02F4) instance_destroy();
} else if (patt == 1800) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 1850) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 1900) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 1950) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2000) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2050) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2087) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2100) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2112) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2125) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2137) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2150) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2162) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2175) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2187) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2200) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2212) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2225) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2237) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2250) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2262) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2275) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2287) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2300) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2312) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2325) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2337) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2350) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2362) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2375) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2387) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2400) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2412) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2425) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2437) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2450) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2462) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2475) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2487) {
    instance_create_depth(player.x, -60, -2, Boss02F2);
} else if (patt == 2500) {
    instance_create_depth(player.x, 668, -2, Boss02F2);
} else if (patt == 2950) {
    with(Boss02F1) {
        sp = 2.0;
        alarm[0] = 7;
    }
} else if (patt == 3350) {
    with(Boss02F1) {sp = 0; alarm[0] = 0;}
    with(fruit) {speed = 0;}
    zx = instance_create_depth(0, 0, -5, Boss02_70);
    zx.a = 1;
} else if (patt == 3575) {
	if (global.practice == 11) {
		with(player) { instance_destroy(); }
		with(world) {
			warn = 0;
			hp_before = -1;
			var_temp = 0;
			audio_stop_channel(1);
			audio_stop_channel(2);
			music_speed = 1;
			music_sp = 1;
			audio_resume_sound(Instance);
		}
		room_goto(Stage02Bs);
		exit;
	}
	
    with(Boss02F1) {instance_destroy();}
    with(fruit) {instance_destroy();}
    instance_destroy();
    with(Boss02_70) {instance_destroy();}
    with(Hamjung02Bs1) {instance_destroy();}
    with(Hamjung02Bs2) {instance_destroy();}
	
	if (layer_exists("Background2")) {
		layer_background_visible(layer_background_get_id(layer_get_id("Background2")), false);
	}
    if (layer_exists("Background3")) {
		layer_background_visible(layer_background_get_id(layer_get_id("Background2")), false);
	}
    instance_create_depth(0, 0, 0, Boss02F5);
}

if (world.curMusic = global.lovetrap
	and abs(audio_sound_get_track_position(world.Instance)-patt/50) > 0.1) {
	audio_sound_set_track_position(world.Instance, patt/50);
}