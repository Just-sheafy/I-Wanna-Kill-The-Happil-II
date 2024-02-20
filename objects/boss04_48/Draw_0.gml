var nBlurQuality;
var ii, _length, _direction, blur, blurStretchX, blurStretchY;

nBlurQuality = 1;
_length = median(0, point_distance(x, y, x_prev, y_prev), 1024);
_direction = point_direction(x, y, x_prev, y_prev);

draw_sprite_ext(sprBoss04_51, 0, x-48*sin(degtorad(image_angle)), y-48*cos(degtorad(image_angle)), 1, 1, image_angle, c_white, alpha);

if(patt == 1 and _length > 0 and spd > 16) {
    _length /= nBlurQuality;
    
    blur = _length*5;
    blurStretchX = 0;
    blurStretchY = 0;
    if(_length > 0) {
        blurStretchX = lengthdir_x(_length / blur * nBlurQuality, _direction);
        blurStretchY = lengthdir_y(_length / blur * nBlurQuality, _direction);
    }
    
    for(ii = blur; ii > 0; ii-=1) {
        draw_sprite_ext(sprite_index, image_index, x + ii * blurStretchX, y + ii * blurStretchY,
            image_xscale, image_yscale, image_angle, image_blend, image_alpha / (blur / 2));
    }
} else draw_self();