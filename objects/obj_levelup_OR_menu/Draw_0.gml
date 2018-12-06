//if (pause == 1){
x = display_get_width()/2;
y = display_get_height()/2;

draw_set_color(c_black);
draw_rectangle(0,0,room_width, room_height,0);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_score);
draw_set_color(c_green);

//MaxMoney
draw_text(x - 700, y + 100 + y_space * 0, "Max Money: ");
draw_text(x - 250, y + 100 + y_space * 0, obj_player.maxMoney);

//Movement Speed
draw_text(x - 700, y + 100 + y_space * 1, "Movement Speed: ");
draw_text(x - 10, y + 100 + y_space * 1, obj_player.basespd);

//Fragility
draw_text(x - 700, y + 100 + y_space * 2, "Fragility: ");
draw_text(x - 350, y + 100 + y_space * 2, obj_player.enemyDamage);

if (room == menu)
{
	var m;

	for (m = 0; m < array_length_1d(menu_pause); m += 1)
	{
		draw_text(x + x_space, y + m*y_space, menu_pause[m])
	}

	draw_sprite(sprite_index, 0, x + x_space - 80, y + mpos_menu*y_space - 30);
}

else if (room == levelup)
{
	j = 0;

	for (j = 0; j < array_length_1d(abilities); j += 1)
	{
		draw_text(x + x_space, y + j*y_space, abilities[j])
	}

	draw_sprite(sprite_index, 0, x + x_space - 80, y + mpos_levelup_menu*y_space - 30);
}

else if (room == invest)
{
	j = 0;

	for (j = 0; j < array_length_1d(invest_options); j += 1)
	{
		draw_text(x + x_space, y + j*y_space, invest_options[j])
	}
	
	draw_text(x + x_space + 900, y + (array_length_1d(invest_options) / 2)*y_space - 150, "x");
	draw_text(x + x_space + 950, y + (array_length_1d(invest_options) / 2)*y_space - 150, obj_player.betPile);
	
	draw_text(x + x_space + 900, y + (array_length_1d(invest_options) / 2)*y_space - 50, "money:");
	draw_text(x + x_space + 1200, y + (array_length_1d(invest_options) / 2)*y_space - 50, obj_player.money);
	
	draw_text(x + x_space + 900, y + (array_length_1d(invest_options) / 2)*y_space + 50, "bonus xp %:");
	draw_text(x + x_space + 1400, y + (array_length_1d(invest_options) / 2)*y_space + 50, floor((obj_player.bonus_xp * obj_player.betPile)*100));

	draw_sprite(sprite_index, 0, x + x_space - 80, y + mpos_invest_menu*y_space - 30);
}