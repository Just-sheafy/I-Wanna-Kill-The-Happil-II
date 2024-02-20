///Draw menu

var darkness_alpha, draw_x, draw_y, draw_scale;

//Draw black screen
darkness_alpha = (sin(t * 2 * pi / 90) + 1) / 2 * 0.3 + 0.5; //Get black screen alpha

draw_set_alpha(darkness_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, 800, 608, false);

draw_set_alpha(1);

//Make sure surface exists
if(!surface_exists(surf))
{
    surf = surface_create(surf_width, surf_height);
}

gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha); //Use inverted blend mode to draw transparent sprites. All sprites must have premultiplied alpha.

surface_set_target(surf);

draw_clear_alpha(c_black, 0); //Clear surface

for(i = 0; i < total; i += 1) //Draw icons
{
    //Get draw coordinates
    draw_x = x_selector + (i mod row) * x_separator;
    draw_y = y_selector + (i div row) * y_separator - offset_y;
    
    
    if(i == select) //Draw outline and change scale for selected achievement
    {
        draw_scale = select_scale
        draw_sprite_ext(spr_achievement_select, 0, draw_x, draw_y, draw_scale, draw_scale, 0, c_white, 1);        
    }
    else
    {
        draw_scale = 1;
    }
    
    draw_sprite_ext(spr[i], img[i], draw_x, draw_y, draw_scale/3, draw_scale/3, 0, c_white, 1);  
}

surface_reset_target();

draw_surface(surf, surf_x, surf_y); //Draw achievement list

gpu_set_blendmode(bm_normal); //Switch back to the default blend mode

//Draw icon and text for selected achievement
draw_sprite_ext(spr_achievement_frame, 0, 196, 128, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr[select], img[select], 196, 128, 1, 1, 0, c_white, 1);
if (spr[select] == spr_achievement_locked)
    draw_sprite_ext(spr_achievement_text, 1, 396, 128, 1, 1, 0, c_white, 1);
else draw_sprite_ext(spr_achievement_text, 0, 396, 128, 1, 1, 0, c_white, 1);

draw_set_font(fnt_achievements);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

scr_draw_text_outline_grad(396 + 4, 128 - 110 + 14 + 4, txt[select], c_white, c_gray, c_black);

if (spr[select] == spr_achievement_locked)
    draw_sprite_ext(spr_achievement_text_locked, 0, 537, 128, 1, 1, -25, c_white, lock_alpha);