if (active){
	image_yscale = max(image_yscale-0.1, 0);
	if image_yscale <= 0 {
		if (asdf) { visible = false; active = false; }
		else instance_destroy();
	}
}