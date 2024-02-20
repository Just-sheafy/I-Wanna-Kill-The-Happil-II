var i;

if (!trig) exit;
audio_play_sound(choose(snd04_6, snd04_7, snd04_8, snd04_9), 0, false);
for(i=0; i<30; i+=1){
    instance_create_depth(x+random_range(-48, 48), y+random_range(-48, 48), -2, Boss04_5);
}