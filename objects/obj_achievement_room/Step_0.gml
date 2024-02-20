lock_alpha = random_range(0.3, 0.6);

if !active {exit;}

///Control

var u, d, r, l, u_hold, d_hold, r_hold, l_hold, ret, cur_row;


//Get keyboard inputs
u = keyboard_check_pressed(world.upKey);
d = keyboard_check_pressed(world.downKey);
r = keyboard_check_pressed(world.rightKey);
l = keyboard_check_pressed(world.leftKey);
u_hold = keyboard_check(world.upKey);
d_hold = keyboard_check(world.downKey);
r_hold = keyboard_check(world.rightKey);
l_hold = keyboard_check(world.leftKey);
ret = (keyboard_check_pressed(vk_escape));

t += 1;
select_scale = lerp(select_scale, select_scale_to, 0.1); //Smooth scale effect
cur_row = (select div row) //Get row of currently selected achievement
offset_y = lerp(offset_y, top_row * y_separator, 0.1); //Smooth scrooling effect

//Create particles
part = instance_create_layer(random(800), 618, "Instances", obj_menu_particle);
part.image_blend = merge_color(c_black, c_white, 0.25);

if (u_hold || d_hold || r_hold || l_hold)
{
	hold_time += 1;
	if ((!is_holding && (hold_time >= 30)) || (is_holding && (hold_time >= 8)))
	{
		is_holding = true;
		hold_time = 0;
		if (u_hold) u = u_hold;
		if (d_hold) d = d_hold;
		if (r_hold) r = r_hold;
		if (l_hold) l = l_hold;
	}
}
else
{
	is_holding = false;
	hold_time = 0;
}

if(r && ((select + 1) < total)) //Right
{
	if ((select mod row) < (row - 1))
	{
	    select += 1;
	    select_scale = 1;
	    sound_play(sndSwitch, 0, false);
	}
	else
	{
		select += 1;
		select_scale = 1;
		cur_row += 1;
		
        if(cur_row - top_row > options_on_screen) //Scroll menu if selected option is too low
        {
            top_row += cur_row - top_row - options_on_screen;
            if ((top_row + options_on_screen + 1) * row > total)
                top_row -= 1;
        } 
		
	    sound_play(sndSwitch, 0, false);
	}
}

if(l && (select > 0)) //Left
{
	if ((select mod row) > 0)
	{
	    select -= 1;
	    select_scale = 1;
	    sound_play(sndSwitch, 0, false);
	}
	else
	{
		select -= 1;
	    select_scale = 1;
		cur_row -= 1;    
		
        if(top_row - cur_row > 0) //Scroll menu if selected option is too high
        {
            top_row -= top_row - cur_row;
        } 
		
	    sound_play(sndSwitch, 0, false);
	}
}

if(d && ((select + row) < total)) //Down
{
    select += row;
    select_scale = 1;
    cur_row += 1;
    
        if(cur_row - top_row > options_on_screen) //Scroll menu if selected option is too low
        {
            top_row += cur_row - top_row - options_on_screen;
            if ((top_row + options_on_screen + 1) * row > total)
                top_row -= 1;
        } 
    sound_play(sndSwitch, 0, false);
}

if(u && ((select - row) >= 0))
{
    select -= row;
    select_scale = 1;
    cur_row -= 1;    
    
        if(top_row - cur_row > 0) //Scroll menu if selected option is too high
        {
            top_row -= top_row - cur_row;
        } 
    sound_play(sndSwitch, 0, false);
}

if (ret) {
    scr_fade_screen(c_black, 0, 1, 10, false);
    active = false;
	audio_stop_channel(0);
    alarm[0] = 50;
    audio_play_sound(sndTitle, 0, false);
}
