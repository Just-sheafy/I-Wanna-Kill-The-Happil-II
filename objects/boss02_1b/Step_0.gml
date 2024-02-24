if !instance_exists(player) and !rat {
    alarm[0] = 0; alarm[1] = 0; alarm[2] = 0; alarm[3] = 0;
    audio_stop_sound(Instance);
    exit;
}
if qwer == 17 and !instance_exists(Boss02_33) {with(Boss02_34) {instance_destroy();} audio_play_sound(snd02_14, 0, false, world.sound_vol); qwer = 18; alarm[2] = 60;}
if qwer == 19 and !instance_exists(Boss02_38) {with(Boss02_39) {instance_destroy();} with(Boss02_40) {instance_destroy();} qwer = 20; alarm[2] = 60;}
if qwer == 21 and !instance_exists(Boss02_41) {qwer = 22; alarm[2] = 60;}
if qwer == 23 and !instance_exists(Boss02_46) {qwer = 24; alarm[2] = 60;}