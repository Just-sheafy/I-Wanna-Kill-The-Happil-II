image_angle = direction;
if image_xscale < 1 {
    image_xscale += 0.05;
    image_yscale += 0.05;
}
image_alpha = random_range(0.2, 0.8);