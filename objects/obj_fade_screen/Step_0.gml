///Change alpha

alpha = lerp(start_alpha, end_alpha, t / fade_frames);
if(t = fade_frames && destroy)
{
    instance_destroy();
}

if(t < fade_frames)
{
    t += 1;
}