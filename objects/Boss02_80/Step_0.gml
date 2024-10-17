if(destroy)
{
	image_alpha -= 1 / 20;
	if(image_alpha <= 0)
	{
		instance_destroy();	
	}
}
else
{
	if(image_alpha < 1)
	{
		image_alpha += 1 / 10;	
	}
}