var i, a;

for(i=0; i<8; i+=1) {
    a = instance_create_depth(x, y, -4, fruit);
    a.sprite_index = sprFruitGr;
    a.direction = 45*i+asdf;
    a.speed = 5;
}
asdf += 34;
if asdf >= 45 {asdf -= 45;}
alarm[2] = 12;