if (!instance_exists(player)) {
    alarm[0] = 0; alarm[1] = 0; alarm[2] = 0;
    exit;
}

var i, zx;

patt += 1;

if (patt == 30) {
    instance_create_layer(300, 200, "Player", Boss01F1);
} else if (patt == 100) {
    with(Boss01F1) instance_destroy();
    with(Boss01F2) {friction = 0; speed = sp;}
} else if (patt == 120) {
    instance_create_layer(500, 200, "Player", Boss01F1);
} else if (patt == 190) {
    with(Boss01F1) instance_destroy();
    with(Boss01F2) {friction = 0; speed = sp;}
} else if (patt == 300) {
    instance_create_layer(400, 50, "Player", Boss01F1);
    instance_create_layer(400, 50, "Player", Boss01F1);
} else if (patt == 345) {
    with(Boss01F1) {instance_destroy();}
    with(Boss01F2) {direction = point_direction(x, y, 400, 0); speed = -sp-1; friction = 0;}
} else if (patt == 390) {
    instance_create_layer(300, 200, "Player", Boss01F3);
} else if (patt == 460) {
    with(Boss01F3) instance_destroy();
    with(Boss01F4) {friction = 0; speed = sp; a = 1;}
} else if (patt == 480) {
    instance_create_layer(500, 200, "Player", Boss01F3);
} else if (patt == 550) {
    with(Boss01F3) instance_destroy();
    with(Boss01F4) {friction = 0; speed = sp; a = -1;}
} else if (patt == 665) {
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(128, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
} else if (patt == 670) {
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(128, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
} else if (patt == 685) {
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(672, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
} else if (patt == 690) {
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(672, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
} else if (patt == 700) {
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(128, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
} else if (patt == 705) {
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(672, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
} else if (patt == 715) {
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(672, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
} else if (patt == 720) {
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(128, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
} else if (patt == 735) {
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(672, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
    
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(128, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
} else if (patt == 745) {
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(672, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
    
    for(i=0; i<24; i+=1) {
        zx = instance_create_layer(128, 128, "Player", Boss01F4);
        zx.direction = 15*i + point_direction(zx.x, zx.y, player.x, player.y);
        zx.speed = 12;
    }
} else if (patt == 760) {
    instance_create_layer(400, 128, "Player", Boss01F3);
} else if (patt == 825) {
    with(Boss01F3) instance_destroy();
    with(Boss01F4) {depth = 1; friction = 0; speed = 14;
		direction = point_direction(x, y, player.x, player.y);}
} else if (patt == 845) {
    instance_create_layer(0, 0, "Player", Boss01F6);
    instance_create_layer(0, 0, "Player", Boss01F9);
} else if (patt == 1030) {
    with(Boss01F5) {direction = point_direction(400, 0, x, y); speed = 7;}
} else if (patt == 1165) {
    with(Boss01F5) {direction = point_direction(400, 0, x, y); speed = 7;}
} else if (patt == 1390) {
    with(Boss01F5) {direction = point_direction(400, 0, x, y); speed = 7;}
    with(Boss01F6) {instance_destroy();}
} else if (patt == 1480) {
    with(Boss01F9) instance_destroy();
    instance_create_layer(0, 0, "Player", Boss01F10);
} else if (patt == 1505) {
    with(Boss01F10) {image_index = 1;}
} else if (patt == 1527) {
    with(Boss01F10) {instance_destroy();}
    instance_create_layer(0, 0, "Player", Boss01F9);
} else if (patt == 1550) {
    with(Boss01F9) {instance_destroy();}
    zx = instance_create_layer(0, 0, "Player", Boss01F10);
    zx.image_index = 2;
} else if (patt == 1575) {
    for(i=0; i<5; i+=1) {
        zx = instance_create_layer(400, 200, "Player", Boss01F7);
		zx.sprite_index = sprFruitC;
        zx.s = 72*i;
    }
} else if (patt == 1576 or patt == 1620 or patt == 1660 or patt == 1710 or
    patt == 1755 or patt == 1805 or patt == 1850 or patt == 1895 or patt == 1940 or
    patt == 1985 or patt == 2030 or patt == 2075 or patt == 2120 or patt == 2165) {
    with(Boss01F7) {
        for(i=0; i<5; i+=1) {
            zx = instance_create_layer(x, y, "Player", Boss01F8);
            zx.direction = 360/5*i+random(360/5);
            zx.speed = random_range(6, 8);
            zx.a = random_range(1, -1);
        }
    }
} else if (patt == 2210) {
    with(Boss01F7) {
        instance_destroy();
        zx = instance_create_layer(x, y, "Player", Boss01F8);
        zx.image_xscale = 3;
        zx.image_yscale = 3;
        zx.d = d;
        zx.direction = point_direction(x, y, player.x, player.y);
        zx.speed = 8;
    }
}

if (world.curMusic = global.phantom
	and abs(audio_sound_get_track_position(world.Instance)-1.8-patt/50) > 0.1) {
	audio_sound_set_track_position(world.Instance, 1.8+patt/50);
}