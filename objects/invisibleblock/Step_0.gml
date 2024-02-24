event_inherited();
if collision_rectangle(x-3, y-3, x+33, y+33, player, false, true) and !visible {
    visible = true;
    audio_play_sound(sndBlockChange, 0, false, world.sound_vol);
}