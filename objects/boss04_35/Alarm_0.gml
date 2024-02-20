var temp, zx, cam_w, cam_h, cam = view_camera[0];

cam_w = camera_get_view_width(cam);
cam_h = camera_get_view_height(cam);

temp = instance_create_depth(0, 0, 0, view_break);
temp.depth = -20;
temp.Gravity = Gravity;

if (!surface_exists(temp.surf))
	temp.surf = surface_create(cam_w/4, cam_h/4);

surface_set_target(temp.surf);
draw_clear_alpha(c_black, 0);
gpu_set_blendmode_ext(bm_one,bm_zero);
if (surface_exists(application_surface))
	draw_surface_ext(application_surface,0,0,1/4,1/4,0,c_white,1);

gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(1);
draw_rectangle(0,0,cam_w/4,cam_h/4,false);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode(bm_normal);
surface_reset_target();

with(temp) event_user(0);
zx = instance_create_depth(0, 0, 0, view_an3);
zx.asdf = 20;
zx.not_check = true;


instance_destroy();

with(world) {music_speed = 0;}
with(soundEx) {if (world.Instance != M1) audio_stop_sound(M1); if (world.Instance != M2) audio_stop_sound(M2);}
with(soundEx2) {if (world.Instance != M1) audio_stop_sound(M1); if (world.Instance != M2) audio_stop_sound(M2);}

world.Kill = audio_play_sound(global.Sdeath, 5, false); audio_play_sound(sndDeath, 0, false);
world.filePlaying = -1; //For music purposes

instance_create_depth(camera_get_view_x(cam)+camera_get_view_width(cam)/2,
	camera_get_view_y(cam)+camera_get_view_height(cam)/2, -1000, GAMEOVER);