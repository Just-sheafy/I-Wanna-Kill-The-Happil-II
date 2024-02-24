var i, num;

if !instance_exists(player) {exit;}
x = player.x;
y = -100;
num = (Boss02_h3.hpm - Boss02_h3.hp) div 8;
if (num != 0) {
    for(i=0; i<num; i+=1) {
        instance_create_depth(800/num*i+random(800/num), -100, -2, Boss02_39);
    }
}

alarm[0] = 120;
audio_play_sound(snd02_16, 0, false, world.sound_vol);