///Update alpha, create "II" effect

image_alpha = random_range(0.7,0.9);

t += 1;

if(t mod 10 == 0)
{
    instance_create_depth(x, y, -198, obj_title_2_effect);
}