///Controls

u = keyboard_check_pressed(world.upKey) && enabled && !frozen;
d = keyboard_check_pressed(world.downKey) && enabled && !frozen;
press = (keyboard_check_pressed(world.jumpKey) || keyboard_check_pressed(vk_enter)) && enabled && !frozen;
ret = (keyboard_check_pressed(vk_escape));

t += 1;

instance_create_layer(random(800), 618, "Instances", obj_menu_particle);

if(enabled)
{
    button_alpha = min(1, button_alpha + 1/button_alpha_time);
    
    title_t = min(1, title_t + 1/title_y_transition_time);
    title_y = title_y_from + (title_y_to - title_y_from) * script_execute(easing_title, title_t);
    
}


if (ret and !frozen) {
    select = 3;
    btn_scale_t[select] = 0;
	audio_stop_channel(0);
    audio_play_sound(sndTitle, 0, false);
    alarm[0] = 50;
    scr_fade_screen(c_black, 0, 1, 10, false);
    frozen = true;
}

if (!frozen) {
    if(!enabled && keyboard_check_pressed(vk_anykey))
    {
        enabled = true;
    }
    
    if(u)
    {
        select -= 1;
        if(select < 0)
        {
            select = total_options - 1;
        }
        
        btn_scale_t[select] = 0;
        audio_play_sound(sndSwitch, 0, false);
    }
    
    if(d)
    {
        select += 1;
        if(select >= total_options)
        {
            select = 0;
        }
        
        btn_scale_t[select] = 0;
        audio_play_sound(sndSwitch, 0, false);
    }
    
    if(press)
    {
		audio_stop_channel(0);
        audio_play_sound(sndTitle, 0, false);
        alarm[0] = 50;
        scr_fade_screen(c_black, 0, 1, 10, false);
        frozen = true;
        
    }
}

for (i = 0; i < total_options; i += 1)
{
    btn_scale_t[i] = min(1, btn_scale_t[i] + 1/easing_time);  
    btn_scale[i] = scale_from + (scale_to - scale_from) * script_execute(easing_buttons, btn_scale_t[i]);
}
