//if (pause == 1){
x = display_get_width()/2;
y = display_get_height()/2;

draw_set_color(c_black);
draw_rectangle(0,0,room_width, room_height,0);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_score);
draw_set_color(c_green);

if (room == menu)
{
	var m;

	for (m = 0; m < array_length_1d(menu_pause); m += 1)
	{
		draw_text(x + space, y + m*space, menu_pause[m])
	}

	draw_sprite(sprite_index, 0, x + 16, y + mpos_menu*space - 30);
}

else if (room == levelup)
{
	j = 0;

	for (j = 0; j < array_length_1d(abilities); j += 1)
	{
		draw_text(x + space, y + j*space, abilities[j])
	}

	draw_sprite(sprite_index, 0, x + 16, y + mpos_levelup_menu*space - 30);
}

else if (room == invest)
{
	j = 0;

	for (j = 0; j < array_length_1d(invest_options); j += 1)
	{
		draw_text(x + space, y + j*space, invest_options[j])
	}
	
	draw_text(x + space + 800, y + (array_length_1d(invest_options) / 2)*space - 100, "x");
	draw_text(x + space + 850, y + (array_length_1d(invest_options) / 2)*space - 100, obj_player.betPile);
	
	draw_text(x + space + 800, y + (array_length_1d(invest_options) / 2)*space, "money:");
	draw_text(x + space + 1100, y + (array_length_1d(invest_options) / 2)*space, obj_player.money);

	draw_sprite(sprite_index, 0, x + 16, y + mpos_invest_menu*space - 30);
}