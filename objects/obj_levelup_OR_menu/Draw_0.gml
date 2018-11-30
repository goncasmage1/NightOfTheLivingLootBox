//if (pause == 1){
x = display_get_width()/2;
y = display_get_height()/2;

draw_set_color(c_black);
draw_rectangle(0,0,room_width, room_height,0);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_score);
draw_set_color(c_green);

if (room == rm_menu)
{
	var m;

	for (m = 0; m < array_length_1d(menu_pause); m += 1)
	{
		draw_text(x + space, y + m*space, menu_pause[m])
	}

	draw_sprite(sprite_index, 0, x + 16, y + mpos_menu*space);
}

if (room == levelup)
{
	var j;

	for (j = 0; j < array_length_1d(abilities); j += 1)
{
	draw_text(x + space, y + j*space, abilities[j])
}

	draw_sprite(sprite_index, 0, x + 16, y + mpos_levelup_menu*space);
}
