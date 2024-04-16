audio_play_sound(sndDeath, 0, false, world.sound_vol);
audio_play_sound(snd04_64, 0, false, world.sound_vol);

with(MouseC) instance_destroy();
saveControls();
with(world) {
    saveEncrypt();
    saveDeaths();
}