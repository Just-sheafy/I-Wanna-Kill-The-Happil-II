/// @description Pause

if (room != initRoom and room != beforeRoom and room != startRoom and room != loadRoom and room != beginning and
    room != Stage01Bs2 and room != Stage01Bs3 and room != Stage02Bs2 and room != Stage02Bs3 and room != Stage02Bs4 and
    room != Stage02Bs5 and room != Stage03Bs2 and room != Stage03Bs3 and room != Stage03Bs4 and room != Stage03Bs5 and
    room != Stage04Bs2 and room != Stage04Bs3 and room != Stage04Bs4 and room != Stage04Bs5 and room != Stage04Bs6 and
    room != Stage04Bs7 and (instance_exists(SavePoint2) or (room != Stage01Bs and room != Stage02Bs and
		room != Stage03Bs and room != Stage04Bs and room != Stage01Sr and room != Stage02Sr and
		room != Stage03Sr))) {
    if(!instance_exists(objPause)){
		var cam = view_camera[0];
        instance_create_depth(camera_get_view_x(cam),camera_get_view_y(cam),-1200,objPause);
		audio_play_sound(sndPaused, 0, false, world.sound_vol);
    }
}