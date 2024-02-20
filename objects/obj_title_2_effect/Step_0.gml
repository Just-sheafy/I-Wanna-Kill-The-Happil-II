///Animation stuff

image_angle += spin;
image_xscale += 0.01;
image_yscale += 0.01;
image_alpha -= 0.02;
if( image_alpha <= 0 )
{
    instance_destroy();
}