patt += 1;
if (patt <= 0) {
	alpha = min(alpha + 1/50, 1);
} else if (patt <= 10) {
	if (patt == 1) {
		audio_play_sound(global.sndCutscene01J, 0, false, world.music_vol);
		alpha = 1; mario_sprite = sprCutscene1J6;
	}
	mario_index += 1/5;
    mario_x = 120-0.1*sqr(patt);
    egg_x = 110-0.1*sqr(patt);
} else if (patt <= 48) {
	mario_index += 1/5;
    mario_x = 110-2*(patt-10);
    egg_x = 100-2*(patt-10);
} else if (patt <= 58) {
	mario_index += 1/5;
    mario_x = 24+0.1*sqr(58-patt);
    egg_x = 14+0.1*sqr(58-patt);
} else if (patt <= 73) {
    if (patt == 59) {
        mario_sprite = sprCutscene1J7;
		mario_index = 0;
        egg_y = 88;
    }
} else if (patt <= 98) {
    if (patt == 74) {
        mario_sprite = sprCutscene1J8;
        egg_bounce = true;
        egg_oy = 88;
        egg_message = true;
    }
} else if (patt <= 103) {
    if (patt == 99) {
        mario_sprite = sprCutscene1J9;
        mario_xscale = -1;
    }
	mario_index += 1/5;
    mario_x = 24+0.1*sqr(patt-98);
} else if (patt <= 133) {
    if (patt == 104) {
		audio_play_sound(snd04_20, 0, false, world.sound_vol);
        mario_sprite = sprCutscene1J10;
		mario_index = 0;
    }
    if (patt == 119) {
        mario_sprite = sprCutscene1J11;
    }
    if (patt == 132) {
		audio_play_sound(snd01_16, 0, false, world.sound_vol);
		audio_play_sound(snd04_24, 0, false, world.sound_vol);
        bomb_index = 1;
        line_fire = 1;
    }
    mario_x = 26.5+(patt-103);
    mario_y = 50+0.2*sqr(patt-119.3);
} else if (patt <= 156) {
    mario_x = 56.5-0.8*(patt-133);
    mario_y = 64+0.2*sqr(patt-142.5);
} else if (patt <= 172) {
    if (patt == 157) {
        mario_sprite = sprCutscene1J12;
    }
    mario_x = 31.7+0.025*sqr(172-patt);
    mario_y = 98;
} else if (patt <= 176) {
    // noone
} else if (patt <= 224) {
    if (patt == 177) {
		audio_play_sound(sndSr01_1, 0, false, world.sound_vol);
        back_bomb = true;
        door_bomb = true;
    }
} else if (patt <= 349) {
    if (patt == 225) {
		audio_play_sound(sndSr01_defeat, 0, false, world.sound_vol);
        back_bomb = false;
        castle_sink = true;
        door_bomb = false;
        door_sink = true;
        mario_sprite = sprCutscene1J8;
    }
} else if (patt <= 399) {
	alpha = max(alpha - 1/50, 0);
} else {
	world.Stage01JSkip = 1;
	
	instance_create_layer(0, 0, "Player", dark1);
	instance_create_layer(0, 0, "Player", dark5);
	instance_create_layer(0, 0, "Player", Warned);
	instance_create_depth(3200, 0, -2000, StageGet);
	
	instance_create_layer(64, 2720, "Player", playerSpawn);
	instance_create_layer(64, 2720, "Player", viewSlide);
	instance_create_layer(0, 0, "Player", Hamjung01J1);
	
	with(Hamjung01J2) collectable = true;
	
	instance_destroy();
	exit;
}

if (!surface_exists(surf)) surf = surface_create(192, 112);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);

// background
if (back_bomb) {
    back_bomb_time += 1;
    if (back_bomb_time >= 4) back_bomb_time -= 4;
    if (back_bomb_time <= 1) back_col = back_col1;
    else back_col = back_col2;
} else {
    back_bomb_time = 0;
    back_col = make_color_rgb(0, 100, 184);
}

draw_set_color(back_col);
draw_rectangle(0, 0, 192, 112, false);
draw_set_color(c_white);
draw_sprite(sprCutscene1J, 0, 0, 0);

// castle
if (castle_sink) {
    castle_sink_time += 1;
    if (castle_sink_time >= 4) castle_sink_time -= 4;
    if (castle_sink_time == 0) castle_x += 2;
    if (castle_sink_time == 2) castle_x -= 2;
    castle_y += 1;
}

draw_sprite(sprCutscene1J3, 0, castle_x, castle_y);

// line
if (line_fire == 1) {
    fire_index += 1;
    if (fire_index >= 4) fire_index = 0;
    line_x += 2;
    line_xscale -= 0.125;
    if (line_xscale <= 0) line_fire = 2;
}

if (line_fire <= 1) draw_sprite_ext(sprCutscene1J14, 0, line_x, line_y, line_xscale, 1, 0, c_white, 1);
if (line_fire == 1) draw_sprite(sprCutscene1J17, (fire_index <= 1), line_x, line_y);

// door
if (door_bomb) {
    door_bomb_time += 1;
    if (door_bomb_time >= 12) door_bomb_time -= 12;
}
if (door_sink) {
    door_sink_time += 1;
    if (door_sink_time <= 16) {
        dust_y -= 1;
    } else if (door_sink_time > 64 && door_sink_time <= 80) {
        dust_y += 1;
    }
    door_y += 1;
}

draw_sprite(sprCutscene1J4, 0, door_x, door_y);
if (door_bomb) {
    if (door_bomb_time >= -6 && door_bomb_time < -3) {
        draw_sprite_part(sprCutscene1J18, 0, 0, 0, 16, 32, castle_x-16, castle_y-32);
        draw_sprite_part(sprCutscene1J18, 0, 32, 0, 16, 32, castle_x, castle_y-32);
    }
    if (door_bomb_time >= 0 && door_bomb_time < 3) {
        draw_sprite(sprCutscene1J18, 0, castle_x, castle_y);
    }
    if (door_bomb_time >= 6 && door_bomb_time < 9) {
        draw_sprite(sprCutscene1J18, 1, castle_x, castle_y);
    }
}
if (door_sink) {
    var temp;
    
    if (door_sink_time >= 16) draw_sprite(sprCutscene1J20, 0, 152, 96);
    temp = door_sink_time-8*floor(door_sink_time/8);
    draw_sprite(sprCutscene1J19, (temp < 4), 152, dust_y);
}

// egg
if (egg_bounce) {
	egg_bounce_time += 1;
    egg_y = egg_oy - 4*abs(sin(degtorad(egg_bounce_time*12)));
}

if (egg_message) draw_sprite(sprCutscene1J16, 0, 16, 60);
draw_sprite(sprCutscene1J15, 0, egg_x, egg_y);

// mario
draw_sprite_ext(mario_sprite, floor(mario_index), mario_x, mario_y, mario_xscale, 1, 0, c_white, 1);

// bomb
draw_sprite(sprCutscene1J13, bomb_index, 48, 80);

// foreground
draw_sprite(sprCutscene1J2, 0, 0, 96);

surface_reset_target();