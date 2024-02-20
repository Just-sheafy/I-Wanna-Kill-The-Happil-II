var cam = view_camera[0];

if (!world.SI_ok or room == Stage02Bs3 or room == Stage02Bs4 or room == Stage04Bs4) {exit;}

if patt==0 {
    ox-=6;
    if ox<=-320 {patt=1; ox=-320;}
} else if patt<32 {
    patt+=1;
} else if patt==32 {
    gra=0.08;
    grav+=gra;
    ox+=grav;
}
x=camera_get_view_x(cam)+camera_get_view_width(cam)+ox;
y=camera_get_view_y(cam)+oy;
if x>camera_get_view_x(cam)+camera_get_view_width(cam) and ox>0 {instance_destroy();}