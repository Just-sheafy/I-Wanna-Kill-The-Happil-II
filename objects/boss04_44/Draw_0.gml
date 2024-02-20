var nBlurQuality;
var ii, _length, _direction, rot, r, ri, blur, blurStretchX, blurStretchY, blurStretchScale;

nBlurQuality = 1;
_length = median(0, point_distance(x, y, x_prev, y_prev), 1024);
_direction = point_direction(x, y, x_prev, y_prev);
r = angle - angle_before;
rot = abs(r);
blurStretchScale = (image_xscale - scale_before) / nBlurQuality;

if(_length + rot + abs(blurStretchScale) > 0) {
    _length /= nBlurQuality;
    rot /= nBlurQuality;
    r /= nBlurQuality;
    
    blur = max(rot, _length, abs(blurStretchScale)*2)*5;
    blurStretchX = 0;
    blurStretchY = 0;
    if(_length > 0) {
        blurStretchX = lengthdir_x(_length / blur * nBlurQuality, _direction);
        blurStretchY = lengthdir_y(_length / blur * nBlurQuality, _direction);
    }
    
    ri = r / blur * 2 * nBlurQuality;
    
    for(ii = blur; ii > 0; ii-=1) {
        draw_sprite_ext(sprite_index, image_index, x + ii * blurStretchX, y + ii * blurStretchY,
            max(0, image_xscale + ii * blurStretchScale / 2.5), max(0, image_yscale + ii * blurStretchScale / 2.5),
            image_angle + ri * ii, image_blend, image_alpha / (blur / 2));
    }
} else draw_self();