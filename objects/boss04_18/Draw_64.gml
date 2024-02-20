if (!world.screen_effect_enable or !surface_exists(surf)) exit;

var i, j, ii, jj, _ox, _oy, xx, yy, xxx, yyy, rr, w, h;
var cam_x, cam_y, cam = view_camera[0];

cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);

draw_clear_alpha(c_black, 0);
draw_set_color(c_white);
if (world.shader_supported && shader_is_compiled(shdPremultiply)) shader_set(shdPremultiply);
draw_primitive_begin_texture(pr_trianglelist, surface_get_texture(surf));

w = surface_get_width(surf);
h = surface_get_height(surf);
_ox = w/2; _oy = h/2;
if (sid != -1 && instance_exists(sid)) {
	_ox = sid.x + ox;
	_oy = sid.y + oy;
}

for(i=0; i<=11; i+=1) {
    for(j=0; j<=11; j+=1) {
        ii = i; jj = j;
        xx = ii*w/12-_ox; yy = jj*h/12-_oy; rr = sqrt(xx*xx+yy*yy);
        if (rr > radius) {
            draw_vertex_texture(_ox+cam_x+xx, _oy+cam_y+yy, ii/12, jj/12);
        } else {
            xxx = _ox + cam_x + xx*power(rr/radius, 1-twist);
            yyy = _oy + cam_y + yy*power(rr/radius, 1-twist);
            draw_vertex_texture(xxx, yyy, ii/12, jj/12);
        }
        
        ii = i+1; jj = j;
        xx = ii*w/12-_ox; yy = jj*h/12-_oy; rr = sqrt(xx*xx+yy*yy);
        if (rr > radius) {
            draw_vertex_texture(_ox+cam_x+xx, _oy+cam_y+yy, ii/12, jj/12);
        } else {
            xxx = _ox + cam_x + xx*power(rr/radius, 1-twist);
            yyy = _oy + cam_y + yy*power(rr/radius, 1-twist);
            draw_vertex_texture(xxx, yyy, ii/12, jj/12);
        }
        
        ii = i; jj = j+1;
        xx = ii*w/12-_ox; yy = jj*h/12-_oy; rr = sqrt(xx*xx+yy*yy);
        if (rr > radius) {
            draw_vertex_texture(_ox+cam_x+xx, _oy+cam_y+yy, ii/12, jj/12);
        } else {
            xxx = _ox + cam_x + xx*power(rr/radius, 1-twist);
            yyy = _oy + cam_y + yy*power(rr/radius, 1-twist);
            draw_vertex_texture(xxx, yyy, ii/12, jj/12);
        }
        
        ii = i+1; jj = j+1;
        xx = ii*w/12-_ox; yy = jj*h/12-_oy; rr = sqrt(xx*xx+yy*yy);
        if (rr > radius) {
            draw_vertex_texture(_ox+cam_x+xx, _oy+cam_y+yy, ii/12, jj/12);
        } else {
            xxx = _ox + cam_x + xx*power(rr/radius, 1-twist);
            yyy = _oy + cam_y + yy*power(rr/radius, 1-twist);
            draw_vertex_texture(xxx, yyy, ii/12, jj/12);
        }
        
        ii = i; jj = j+1;
        xx = ii*w/12-_ox; yy = jj*h/12-_oy; rr = sqrt(xx*xx+yy*yy);
        if (rr > radius) {
            draw_vertex_texture(_ox+cam_x+xx, _oy+cam_y+yy, ii/12, jj/12);
        } else {
            xxx = _ox + cam_x + xx*power(rr/radius, 1-twist);
            yyy = _oy + cam_y + yy*power(rr/radius, 1-twist);
            draw_vertex_texture(xxx, yyy, ii/12, jj/12);
        }
        
        ii = i+1; jj = j;
        xx = ii*w/12-_ox; yy = jj*h/12-_oy; rr = sqrt(xx*xx+yy*yy);
        if (rr > radius) {
            draw_vertex_texture(_ox+cam_x+xx, _oy+cam_y+yy, ii/12, jj/12);
        } else {
            xxx = _ox + cam_x + xx*power(rr/radius, 1-twist);
            yyy = _oy + cam_y + yy*power(rr/radius, 1-twist);
            draw_vertex_texture(xxx, yyy, ii/12, jj/12);
        }
    }
}

draw_primitive_end();
if (world.shader_supported) shader_reset();