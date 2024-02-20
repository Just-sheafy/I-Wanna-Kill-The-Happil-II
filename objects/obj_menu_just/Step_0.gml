///Update alpha, sine wave move

t += 1;

y = ystart + sin(degtorad(t * 4)) * 4;

if(t mod 3 == 0)
    image_alpha = random_range(0.6,0.8);