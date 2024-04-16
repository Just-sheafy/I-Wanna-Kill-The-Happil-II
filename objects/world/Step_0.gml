/// @description *Debugging Stuffs

// DELETE LATER!!
// SHOULD ALSO DELETE saveControls and loadControls!!

var i, back_id, temp, fin, fout;

if (file_exists("SaveMusicTemp.dat")) {
    file_delete("SaveMusicTemp.dat");
    if (file_exists("SaveMusic.dat")) {
		fin = file_bin_open("SaveMusic.dat", 0);
        
		Instance = audio_play_sound(file_bin_read_byte(fin), 10, true, music_vol);
		audio_sound_set_track_position(Instance, file_bin_read_byte(fin));
        
        file_bin_close(fin);
		
		
		// Initialize
		list_obj_before = ds_list_create();
		list_objx_before = ds_list_create();
		list_objy_before = ds_list_create();
		for(i=0; i<3; i+=1) {
			list_sounds[i] = ds_list_create();
		}
		
		sound_group();
	}
}

if (instance_exists(playerMove)) {
    if (mouse_check_button_released(mb_right)) {
        temp = instance_create_depth(playerMove.x, playerMove.y, -2, player);
        temp.Gravity = playerMove.Gravity;
        temp.GravityH = playerMove.GravityH;
        temp.image_xscale = playerMove.image_xscale;
        temp.image_yscale = playerMove.image_yscale * (2*playerMove.Gravity - 1);
        with(playerMove) instance_destroy();
		with(player) set_mask();
    }
}

if (instance_exists(player) and !instance_exists(objPause)) {
    /*
	if (keyboard_check_pressed(forcedSave)) {
        game_save("Save.dat");
        if file_exists("SaveMusic.dat") {file_delete("SaveMusic.dat");}
        
        if (curMusic != -1) {
            fout = file_bin_open("SaveMusic.dat", 1);
            
            file_bin_write_byte(fout, curMusic);
            file_bin_write_byte(fout, audio_sound_get_track_position(Instance));
            
            file_bin_close(fout);
        }
    }
    
    if (keyboard_check_pressed(forcedLoad)) {
        if (file_exists("Save.dat")) {
			for(i=0; i<3; i+=1) audio_stop_channel(i);			
            f=file_text_open_write("SaveMusicTemp.dat");
            file_text_close(f);
			
			// Initialize
			ds_list_destroy(list_obj_before);
			ds_list_destroy(list_objx_before);
			ds_list_destroy(list_objy_before);
			for(i=0; i<3; i+=1) {
				ds_list_destroy(list_sounds[i]);
			}
			
            game_load("Save.dat");
        }
    }
	*/
    if ((room != Stage01Bs and room != Stage01Bs2 and room != Stage01Bs3 and
        room != Stage02Bs and room != Stage02Bs2 and room != Stage02Bs3 and room != Stage02Bs4 and
        room != Stage03Bs and room != Stage03Bs2 and room != Stage03Bs3 and room != Stage03Bs4 and room != Stage03Bs5 and
        room != Stage04Bs and room != Stage04Bs2 and room != Stage04Bs3 and room != Stage04Bs4 and room != Stage04Bs5 and
		room != Stage04Bs6 and room != Stage04Bs7 and room != Stage01Sr and room != Stage02Sr and room != Stage03Sr) and
        mouse_check_button_pressed(mb_right)) {
        temp = instance_create_depth(mouse_x, mouse_y, -2, playerMove);
        temp.Gravity = player.Gravity;
        temp.GravityH = player.GravityH;
        temp.image_xscale = player.image_xscale;
        temp.image_yscale = player.image_yscale * (2*player.Gravity - 1);
        temp.image_angle = player.image_angle;
        with(player) instance_destroy();
    }
}


// Real Works here

if music_speed != 1 {
    music_sp = max(music_sp - 0.006, 0);
	if (music_slowdown) {
		if (music_sp > 0) audio_sound_pitch(Instance, music_sp);
		else if (audio_is_playing(Instance)) audio_pause_sound(Instance);
	} else if (audio_is_playing(Instance)) audio_pause_sound(Instance);
} else audio_sound_pitch(Instance, 1);

if (!instance_exists(objPause)) {
    if keyboard_check_pressed(gameRestart) {
		if (room == Stage04Bs7) {
			audio_play_sound(sndWrong, 0, false, sound_vol);
		} else if (room != initRoom and room != beforeRoom and room != startRoom and room != loadRoom and room != beginning) {
            if (!instance_exists(player)) re_nodie = true;
			hp_before = -1;
            
            room_before = room;
            for(i=0; i<8; i+=1) {
				back_x_before[i] = 0;
				back_y_before[i] = 0;
				if (i > 0) {
					if (!layer_exists("Background" + string(i))) continue;
					back_id = layer_get_id("Background" + string(i));
				} else back_id = layer_get_id("Background");
                back_x_before[i] = layer_get_x(back_id);
                back_y_before[i] = layer_get_y(back_id);
            }
            if (room == Stage02Bs3 or room == Stage02Bs4) {
                with(Hamjung02Bs2) {
                    ds_list_add(world.list_obj_before, Hamjung02Bs2);
                    ds_list_add(world.list_objx_before, x);
                    ds_list_add(world.list_objy_before, y);
                }
            } else if (room == Stage03C) {
                with(Hamjung03C) {
                    if (visible and direction == 225) {
                        ds_list_add(world.list_obj_before, Hamjung03C);
                        ds_list_add(world.list_objx_before, x);
                        ds_list_add(world.list_objy_before, y);
                    }
                }
            } else if (room == Stage03D) {
                with(Hamjung03D4) {
                    if (visible) {
                        ds_list_add(world.list_obj_before, Hamjung03D4);
                        ds_list_add(world.list_objx_before, x);
                        ds_list_add(world.list_objy_before, y);
                    }
                }
            } else if (room == Stage03F) {
                with(Hamjung03F8) {
                    ds_list_add(world.list_obj_before, Hamjung03F8);
                    ds_list_add(world.list_objx_before, x);
                    ds_list_add(world.list_objy_before, y);
                }
            }
			
            loadEncrypt();
            audio_stop_channel(1);
            audio_stop_channel(2);
            music_speed = 1;
            music_sp = 1;
			audio_resume_sound(Instance);
            with(player) {
				hspd = 0; vspd = 0; grav = 0;
				max_hspd = 3; max_vspd = 8;
				grav_amount = 0.4;
				
				jump_height = [8.5, 7]; jump_total = 2;
				
				noGravity = false; frozen = 0;
			}
            if (instance_exists(soundEx) or instance_exists(soundEx2)) {
                filePlaying = -0.5; curMusic = global.None;
				audio_stop_channel(0);
				audio_stop_channel(3);
            }
            
            b = 0;
            c = 0;
            var_temp = 0;
            if (surf_temp != -1 and surface_exists(surf_temp)) {
                surface_free(surf_temp);
                surf_temp = -1;
            }
			if (spr_temp != -1 and sprite_exists(spr_temp)) {
				sprite_delete(spr_temp);
				spr_temp = -1;
			}
        }
    }
    
    if instance_exists(player) and room != initRoom and room != startRoom {
        if timing > 0 {timing -= 1;}
        else {
            s+=1;
            if s >= 60 {s=0; m+=1;}
            if m >= 60 {m=0; h+=1;}
            timing = room_speed;
        }
    }
}
room_caption="I Wanna Kill The Happil II";

if instance_exists(player) {
    if !achieve[0] and deaths[0] >= 100 {achieve[0] = 1;}
    if !achieve[1] and deaths[0] >= 1000 {achieve[1] = 1;}
    if !achieve[2] and deaths[0] >= 4444 {achieve[2] = 1;}
    if !achieve[3] and deaths[0] >= 9999 {achieve[3] = 1;}
    if !achieve[4] and deaths[0] >= 100000 {achieve[4] = 1;}
    if !achieve[5] and deaths[0] >= 1000000 {achieve[5] = 1;}
    if !achieve[6] and h >= 1 {achieve[6] = 1;}
    if !achieve[7] and h >= 24 {achieve[7] = 1;}
    if !achieve[8] and h >= 100 {achieve[8] = 1;}
}

if room != initRoom and room != beforeRoom and room != startRoom and room != loadRoom and room != beginning {
    room_caption += " Deaths : " + string(deaths[0]) + " Time : " + string(h) + ":" + string(m) + ":" + string(s)
		+ " fps: " + string(fps);
}

window_set_caption(room_caption);