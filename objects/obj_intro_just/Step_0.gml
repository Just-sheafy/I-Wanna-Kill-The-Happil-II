///Cutscene and skip control

var part, zx;
var s = keyboard_check_pressed(world.skipKey);

if(s)
{
    room_goto(startRoom);
	audio_sound_set_track_position(world.Instance, 6);
    exit;
}

t += 1;

if(t < 150)
    image_alpha += 1/150;

if(t == 160)
{
    scr_fade_screen(c_white, 1, 0, 10, true);   
    image_index = 2; 
    audio_play_sound(sndLightning, 0, false, world.sound_vol);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 30;    
	zx.not_check = true;
}

if(t > 160)
{
    part = instance_create_layer(random(800), 618, "Instances", obj_menu_particle);
    part.image_blend = c_red;
    part.image_alpha = 0.2;
}


if(t == 250)
{
    scr_fade_screen(c_black, 0, 1, 50, true);  
}
if(t == 300)
{
    room_goto(startRoom);
}
