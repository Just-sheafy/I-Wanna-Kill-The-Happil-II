var i, zx;

for(i=0; i<2; i+=1) {
    zx = instance_create_depth(x, y, -4, fruit);
    zx.sprite_index = choose(sprFruit, sprFruitO, sprFruitY, sprFruitCt, sprFruitG, sprFruitE,
                             sprFruitC, sprFruitA, sprFruitB, sprFruitV, sprFruitM, sprFruitP);
    zx.direction = 360/2*i+random(360/2);
    zx.speed = random_range(5, 7);
    zx.as = random_range(1, -1);
}
alarm[0] = 7;