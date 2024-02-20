d += 5;
if d >= 360 {d -= 360;}
x = ox + dx * sin(degtorad(d));
y = oy + dy * sin(degtorad(d));
image_angle += 5 * (1 - 2 * circle);
if image_alpha < 1 {image_alpha += 0.05;}