/// @description @scr_fade_screen(color, start_alpha, end_alpha, fade_frames, destroy)
/// @param color
/// @param  start_alpha
/// @param  end_alpha
/// @param  fade_frames
/// @param  destroy
///@param Flash color
///@param Flash starting alpha
///@param Flash ending alpha 
///@param Frames to fully change alpha
///@param Destroy when alpha fully changed
function scr_fade_screen(argument0, argument1, argument2, argument3, argument4) {


	var obj;
	obj = instance_create_depth(0, 0, -1000, obj_fade_screen);
	obj.color = argument0;
	obj.start_alpha = argument1;
	obj.end_alpha = argument2;
	obj.fade_frames = argument3;
	obj.destroy = argument4;



}
