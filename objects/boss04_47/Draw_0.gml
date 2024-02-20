draw_self();
/*
var nBlurQuality;
var ii, _length, _direction, blur, blurStretchX, blurStretchY, blurStretchScale;

nBlurQuality = 0.5;
_length = median(0, point_distance(x, y, x_prev, y_prev), 1024);
_direction = point_direction(x, y, x_prev, y_prev);
blurStretchScale = (image_xscale - scale_before) / nBlurQuality;

if(_length + abs(blurStretchScale) > 0) {
    _length /= nBlurQuality;
    
    blur = max(1, max(_length, abs(blurStretchScale)*2)*8*blur_intensity);
    blurStretchX = 0;
    blurStretchY = 0;
    if(_length > 0) {
        blurStretchX = lengthdir_x(_length / blur * nBlurQuality, _direction);
        blurStretchY = lengthdir_y(_length / blur * nBlurQuality, _direction);
    }
    
    for(ii = blur; ii > 0; ii-=1) {
        draw_sprite_ext(sprite_index, image_index, x + ii * blurStretchX, y + ii * blurStretchY,
            max(0, image_xscale + ii * blurStretchScale / 5), max(0, image_yscale + ii * blurStretchScale / 5),
            image_angle, image_blend, image_alpha / (blur / 2));
    }
} else draw_self();