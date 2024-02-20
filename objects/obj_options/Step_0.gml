if !active {exit;}

///Effects, controls

var part, diff, u, d, r, l, l_hold, r_hold, press, ret;

t += 1;

//Update clock angles
angle[0] += 0.2;
angle[1] += 0.4;

//Create particles
part = instance_create_layer(random(800), 618, "Instances", obj_menu_particle);
part.image_blend = c_gray;

//Get keyboard inputs
u = keyboard_check_pressed(world.upKey);
d = keyboard_check_pressed(world.downKey);
r = keyboard_check_pressed(world.rightKey);
l = keyboard_check_pressed(world.leftKey);
r_hold = keyboard_check(world.rightKey);
l_hold = keyboard_check(world.leftKey);
press = (keyboard_check_pressed(world.jumpKey) || keyboard_check_pressed(vk_enter));
ret = (keyboard_check_pressed(vk_escape));

//Update animation coordinates
offset_y = lerp(offset_y, top_select * y_separator, 0.1); //Smooth scrooling effect
spike_x = sin(t * 2 * pi / 60) * 3; //Spike sine wave movement
spike_y = lerp(spike_y, select * y_separator, 0.2); //Spike Y position update

//Health type 0,2
if (btn_available[10]) {
	index_time += 1;
	if (index_time >= 20) index_time = 0;
}

if(mode == 0) //Selecting options
{
    if(u) //Up button
    {
        diff = 1;
        
        while ((select - diff > 0) && !btn_available[max(0, select - diff)]) //Make sure next button is available
        {   
            diff += 1;
        }
    
        select -= diff; 
        
        if(top_select - select > 0) //Scroll menu if selected option is too high
        {
            top_select -= top_select - select;
        }    
        if(select < 0) //Wrap
        {
            select = total_options - 1;
            while(!btn_available[select]) //Make sure bottom button is available
                select -= 1;
            top_select = select - options_on_screen;
            
        }
        
        audio_play_sound(sndSwitch, 0, false);
    }
    
    if(d)
    {
        diff = 1;
        while (select + diff < total_options && !btn_available[min(total_options - 1, select + diff)]) //Make sure next button is available
            diff += 1;
         
        select += diff; 
        
        if(select - top_select > options_on_screen) //Scroll menu if selected option is too high
        {
            top_select += select - top_select - options_on_screen;
        }
        if(select >= total_options)
        {
            select = 0;
            while(!btn_available[select]) //Make sure top button is available
                select += 1;            
            top_select = select;
        }
        
        audio_play_sound(sndSwitch, 0, false);
    }
}

if(select < 2) //Volume sliders
{
    if (r_hold || l_hold) //Update button holding timer
    {
        slider_time += 1;
    }
    else
    {
        slider_time = 0;
    }
    
    //Update volume
    if (l || (slider_time > 5 && l_hold))
    {
        val[select] = max(0, val[select] - 1/100);
    }
    if (r || (slider_time > 5 && r_hold))
    {
        val[select] = min(1, val[select] + 1/100);
    }    
    
    if (select == 0) world.music_vol = val[select];
    else world.sound_vol = val[select];
    
}

if ((select >= 2 && select <= 4) || select > 6) //Normal buttons, enabled or disabled
{
    if (l)
    {
		if (select != 10) {
	        if (val[select]) audio_play_sound(sndSwitch, 0, false);
	        val[select] = false;
			if (select == 3) display_reset(0, val[select]);
			if (select == 9) btn_available[10] = false;
		} else {
			audio_play_sound(sndSwitch, 0, false);
			val[select] = (val[select] <= 0)? 2 : val[select]-1;
		}
    }
    if (r)
    {
		if (select != 10) {
	        if (!val[select]) audio_play_sound(sndSwitch, 0, false);
	        val[select] = true;
			if (select == 3) display_reset(0, val[select]);
			if (select == 9) btn_available[10] = true;
		} else {
			audio_play_sound(sndSwitch, 0, false);
			val[select] = (val[select] >= 2)? 0 : val[select]+1;
		}
    }
    
}

if(select == 5) //Keyboard controls
{
    if(mode == 0 && press) //Change mode to keyboard key setting
    {
        mode = 1;
        audio_play_sound(sndSwitch, 0, false);
    }
        
    else if(mode == 1)
    {
        if (!key_config) //Choosing a button to change
        {
            //Horizontal controls
            if (l && key_select > 0 && key_select < 7)
            {
                key_select -= 1;
                audio_play_sound(sndSwitch, 0, false);
            }
            if (r && key_select >= 0 && key_select < 6)
            {
                key_select += 1;
                audio_play_sound(sndSwitch, 0, false);
            }  
            
            //Vertical controls
            if(u && key_select == 5)
            {
                key_select = 7;
                audio_play_sound(sndSwitch, 0, false);
            }
            if(d && key_select == 7)
            {
                key_select = 5;
                audio_play_sound(sndSwitch, 0, false);
            }
                
            //Set state to configurating a key
            if(press)
            {
                key_config = true;
                audio_play_sound(sndSwitch, 0, false);
            }
            if(ret) //Return to previous state
            {
                key_select = 0;
                mode = 0;
                ret = false;
                audio_play_sound(sndSwitch, 0, false);
            }        
        } 
        else //Configurating chosen key
        {
            if(keyboard_check_pressed(vk_anykey))
            {
                if (!ret and !keyboard_check_pressed(vk_f2) and
                    !keyboard_check_pressed(vk_alt) and !keyboard_check_pressed(vk_f4) and
                    !keyboard_check_pressed(vk_f9)) //If anything else is pressed, ignore it
                {
                    switch(key_select)
                    {
                        case 0: // Restart
                        //set control here e. g.:
                        //global.restartKey = keyboard_lastkey etc.
                            if (keyboard_lastkey != world.shootKey and keyboard_lastkey != world.jumpKey and
                                keyboard_lastkey != world.skipKey and keyboard_lastkey != world.leftKey and
                                keyboard_lastkey != world.downKey and keyboard_lastkey != world.rightKey and
                                keyboard_lastkey != world.upKey and keyboard_lastkey != vk_f2 and
								keyboard_lastkey != vk_f4 and keyboard_lastkey != vk_f9 and
								keyboard_lastkey != vk_escape and keyboard_lastkey != ord("P"))
                            {
                                world.gameRestart = keyboard_lastkey;
                                audio_play_sound(sndChark, 0, false);
                            }
                            else audio_play_sound(sndBoo, 0, false);
                            break;
                        case 1: // Shoot
                            if (keyboard_lastkey != world.gameRestart and keyboard_lastkey != world.jumpKey and
                                keyboard_lastkey != world.skipKey and keyboard_lastkey != world.leftKey and
                                keyboard_lastkey != world.downKey and keyboard_lastkey != world.rightKey and
                                keyboard_lastkey != world.upKey and keyboard_lastkey != vk_f2 and
								keyboard_lastkey != vk_f4 and keyboard_lastkey != vk_f9 and
								keyboard_lastkey != vk_escape and keyboard_lastkey != ord("P"))
                            {
                                world.shootKey = keyboard_lastkey;
                                audio_play_sound(sndChark, 0, false);
                            }
                            else audio_play_sound(sndBoo, 0, false);
                            break;                        
                        case 2: // Jump
                            if (keyboard_lastkey != world.gameRestart and keyboard_lastkey != world.shootKey and
                                keyboard_lastkey != world.skipKey and keyboard_lastkey != world.leftKey and
                                keyboard_lastkey != world.downKey and keyboard_lastkey != world.rightKey and
                                keyboard_lastkey != world.upKey and keyboard_lastkey != vk_f2 and
								keyboard_lastkey != vk_f4 and keyboard_lastkey != vk_f9 and
								keyboard_lastkey != vk_escape and keyboard_lastkey != ord("P"))
                            {
                                world.jumpKey = keyboard_lastkey;
                                audio_play_sound(sndChark, 0, false);
                            }
                            else audio_play_sound(sndBoo, 0, false);
                            break;                        
                        case 3: // Skip
                            if (keyboard_lastkey != world.gameRestart and keyboard_lastkey != world.shootKey and
                                keyboard_lastkey != world.jumpKey and keyboard_lastkey != world.leftKey and
                                keyboard_lastkey != world.downKey and keyboard_lastkey != world.rightKey and
                                keyboard_lastkey != world.upKey and keyboard_lastkey != vk_f2 and
								keyboard_lastkey != vk_f4 and keyboard_lastkey != vk_f9 and
								keyboard_lastkey != vk_escape and keyboard_lastkey != ord("P"))
                            {
                                world.skipKey = keyboard_lastkey;
                                audio_play_sound(sndChark, 0, false);
                            }
                            else audio_play_sound(sndBoo, 0, false);
                            break;
                        case 4: // Left
                            if (keyboard_lastkey != world.gameRestart and keyboard_lastkey != world.shootKey and
                                keyboard_lastkey != world.jumpKey and keyboard_lastkey != world.skipKey and
                                keyboard_lastkey != world.downKey and keyboard_lastkey != world.rightKey and
                                keyboard_lastkey != world.upKey and keyboard_lastkey != vk_f2 and
								keyboard_lastkey != vk_f4 and keyboard_lastkey != vk_f9 and
								keyboard_lastkey != vk_escape and keyboard_lastkey != ord("P"))
                            {
                                world.leftKey = keyboard_lastkey;
                                audio_play_sound(sndChark, 0, false);
                            }
                            else audio_play_sound(sndBoo, 0, false);
                            break;                        
                        case 5: // Down
                            if (keyboard_lastkey != world.gameRestart and keyboard_lastkey != world.shootKey and
                                keyboard_lastkey != world.jumpKey and keyboard_lastkey != world.skipKey and
                                keyboard_lastkey != world.leftKey and keyboard_lastkey != world.rightKey and
                                keyboard_lastkey != world.upKey and keyboard_lastkey != vk_f2 and
								keyboard_lastkey != vk_f4 and keyboard_lastkey != vk_f9 and
								keyboard_lastkey != vk_escape and keyboard_lastkey != ord("P"))
                            {
                                world.downKey = keyboard_lastkey;
                                audio_play_sound(sndChark, 0, false);
                            }
                            else audio_play_sound(sndBoo, 0, false);
                            break;                        
                        case 6: // Right
                            if (keyboard_lastkey != world.gameRestart and keyboard_lastkey != world.shootKey and
                                keyboard_lastkey != world.jumpKey and keyboard_lastkey != world.skipKey and
                                keyboard_lastkey != world.leftKey and keyboard_lastkey != world.downKey and 
                                keyboard_lastkey != world.upKey and keyboard_lastkey != vk_f2 and
								keyboard_lastkey != vk_f4 and keyboard_lastkey != vk_f9 and
								keyboard_lastkey != vk_escape and keyboard_lastkey != ord("P"))
                            {
                                world.rightKey = keyboard_lastkey;
                                audio_play_sound(sndChark, 0, false);
                            }
                            else audio_play_sound(sndBoo, 0, false);
                            break;                        
                        case 7: // Up
                            if (keyboard_lastkey != world.gameRestart and keyboard_lastkey != world.shootKey and
                                keyboard_lastkey != world.jumpKey and keyboard_lastkey != world.skipKey and
                                keyboard_lastkey != world.leftKey and keyboard_lastkey != world.downKey and
                                keyboard_lastkey != world.rightKey and keyboard_lastkey != vk_f2 and
								keyboard_lastkey != vk_f4 and keyboard_lastkey != vk_f9 and
								keyboard_lastkey != vk_escape and keyboard_lastkey != ord("P"))
                            {
                                world.upKey = keyboard_lastkey;
                                audio_play_sound(sndChark, 0, false);
                            }
                            else audio_play_sound(sndBoo, 0, false);
                            break;                
                    }
                }
                
                key_config = false; //Change state
                event_user(0); //Save controls
                
                if (ret) exit;
            }
        }                
    }
}

if (ret) {
    scr_fade_screen(c_black, 0, 1, 10, false);
    active = false;
	audio_stop_channel(0);
    alarm[0] = 50;
    audio_play_sound(sndTitle, 0, false);
    
    world.music_vol = val[0]; //Music volume
    world.sound_vol = val[1]; //Sound volume
    world.music_slowdown = val[2]; //Music slowdown effect
    world.vsync = val[3]; //VSync
    world.screen_effect_enable = val[4]; //Screen effect
    world.SI_ok = val[7]; //Stage Image
    world.HI_ok = val[8]; //Happil Image
    world.HEALTH_ok = val[9]; //Health system
    world.HEALTH_type = val[10]; //Health type
    world.BN_ok = val[11]; //Boss name
    world.BH_ok = val[12]; //Boss health
    world.AT_ok = val[13]; //Avoidance Time
    world.WASP_ok = val[14]; //WASP
	
	display_reset(0, (world.vsync == 1));
    
    with(world) saveDeaths();
}