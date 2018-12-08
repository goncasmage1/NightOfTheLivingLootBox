//Draw sprite
draw_self();
//Draw white flash sprite if recently hit (uses "hit" for alpha/transparency)
draw_sprite_ext(spr_enemy_flash,0,x,y,image_xscale,image_yscale,image_angle,c_white,hit);

draw_set_colour(c_red);
draw_set_font(fnt_smaller);
draw_set_alpha(text_alpha);
draw_text(obj_player.x - 75, obj_player.y - 50, "-10$");
draw_set_alpha(1);