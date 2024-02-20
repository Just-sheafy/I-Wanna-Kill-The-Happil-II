if !a and visible {a = 1; var zx = instance_create_depth(x, y, -5, Explo5); zx.image_xscale = 1/2; zx.image_yscale = 1/2;}
if a and !visible {a = 0; image_alpha = 0;}
if visible {if image_alpha < 1 {image_alpha += 0.05;}}