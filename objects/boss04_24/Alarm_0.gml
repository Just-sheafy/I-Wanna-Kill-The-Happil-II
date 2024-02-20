var i, zx;

if (patt == 0) {
    image_xscale *= 4;
    image_yscale *= 4;
    audio_play_sound(snd04_21, 0, false);
    patt += 1;
    alarm[0] = 35;
} else if (patt == 1) {
    x = 0;
    if (instance_exists(player)) {
        x = player.x;
        if (player.Gravity) image_yscale = abs(image_yscale);
        else image_yscale = -abs(image_yscale);
    }
    if (image_yscale > 0) {
        y = -36; vspeed = 24;
    } else {
        y = room_height + 36; vspeed = -24;
    }
    audio_play_sound(snd04_22, 0, false);
    
    if (!boshy_appear) {
        zx = instance_create_depth(x, y, -10, Boss04_n);
        zx.image_index = 4;
        zx.sid = id;
        zx.ox = -5;
        zx.oy = -6;
    }
    
    patt += 1;
    alarm[0] = 24;
} else if (patt == 2) {
    vspeed = 0;
    if (image_yscale > 0) {
        for(i=0; i<12; i+=1){
            zx = instance_create_depth(room_width/12*i+random(room_width/12), -32, -3, Boss04_15);
            zx.sprite_index = sprBoss04_34;
            zx.hspeed = random(2)-1;
            zx.vspeed = random(5)-3.5;
            zx.gravity_direction = 270;
            zx.gravity = 0.15+random(0.15);
        }
    } else {
        for(i=0; i<12; i+=1){
            zx = instance_create_depth(room_width/12*i+random(room_width/12), room_height+32, -3, Boss04_15);
            zx.sprite_index = sprBoss04_34;
            zx.hspeed = random(2)-1;
            zx.vspeed = -random(5)+3.5;
            zx.gravity_direction = 90;
            zx.gravity = 0.15+random(0.15);
        }
    }
    
    audio_play_sound(snd03_4, 0, false);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 15;
    
    patt += 1;
    alarm[0] = 30;
} else if (patt == 3) {
    if (image_yscale > 0) vspeed = -24;
    else vspeed = 24;
    audio_play_sound(snd04_20, 0, false);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 5;
    
    patt += 1;
    alarm[0] = 50;
} else if (patt == 4) {
    x = 0;
    if (instance_exists(player)) x = player.x;
    if (image_yscale > 0) {
        y = -36; vspeed = 24;
    } else {
        y = room_height + 36; vspeed = -24;
    }
    audio_play_sound(snd04_22, 0, false);
    
    patt += 1;
    alarm[0] = 24;
} else if (patt == 5) {
    vspeed = 0;
    if (image_yscale > 0) {
        for(i=0; i<12; i+=1){
            zx = instance_create_depth(room_width/12*i+random(room_width/12), -32, -3, Boss04_15);
            zx.sprite_index = sprBoss04_34;
            zx.hspeed = random(2)-1;
            zx.vspeed = random(5)-3.5;
            zx.gravity_direction = 270;
            zx.gravity = 0.15+random(0.15);
        }
    } else {
        for(i=0; i<12; i+=1){
            zx = instance_create_depth(room_width/12*i+random(room_width/12), room_height+32, -3, Boss04_15);
            zx.sprite_index = sprBoss04_34;
            zx.hspeed = random(2)-1;
            zx.vspeed = -random(5)+3.5;
            zx.gravity_direction = 90;
            zx.gravity = 0.15+random(0.15);
        }
    }
    
    audio_play_sound(snd03_4, 0, false);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 15;
    
    patt += 1;
    alarm[0] = 30;
} else if (patt == 6) {
    if (image_yscale > 0) vspeed = -24;
    else vspeed = 24;
    audio_play_sound(snd04_20, 0, false);
    
    patt += 1;
    alarm[0] = 50;
} else if (patt == 7) {
    x = 0;
    if (instance_exists(player)) x = player.x;
    if (image_yscale > 0) {
        y = -36; vspeed = 24;
    } else {
        y = room_height + 36; vspeed = -24;
    }
    audio_play_sound(snd04_22, 0, false);
    
    patt += 1;
    alarm[0] = 24;
} else if (patt == 8) {
    vspeed = 0;
    if (image_yscale > 0) {
        for(i=0; i<12; i+=1){
            zx = instance_create_depth(room_width/12*i+random(room_width/12), -32, -3, Boss04_15);
            zx.sprite_index = sprBoss04_34;
            zx.hspeed = random(2)-1;
            zx.vspeed = random(5)-3.5;
            zx.gravity_direction = 270;
            zx.gravity = 0.15+random(0.15);
        }
    } else {
        for(i=0; i<12; i+=1){
            zx = instance_create_depth(room_width/12*i+random(room_width/12), room_height+32, -3, Boss04_15);
            zx.sprite_index = sprBoss04_34;
            zx.hspeed = random(2)-1;
            zx.vspeed = -random(5)+3.5;
            zx.gravity_direction = 90;
            zx.gravity = 0.15+random(0.15);
        }
    }
    
    audio_play_sound(snd03_4, 0, false);
    zx = instance_create_depth(0, 0, 0, view_an3);
    zx.asdf = 15;
    
    patt += 1;
    alarm[0] = 60;
} else if (patt == 9) {
    if (image_yscale > 0) vspeed = -24;
    else vspeed = 24;
    audio_play_sound(snd04_20, 0, false);
    
    patt += 1;
    alarm[0] = 50;
} else instance_destroy();