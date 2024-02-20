image_xscale = 2;
image_yscale = 2;
if y > 608 {vspeed = -8;}
if y < 0 {vspeed = 8;}
alarm[0] = 50;
sprite_index = choose(sprFruit, sprFruitO, sprFruitY, sprFruitCt, sprFruitG, sprFruitE,
                      sprFruitC, sprFruitA, sprFruitB, sprFruitV, sprFruitM, sprFruitP);
image_speed = 0;