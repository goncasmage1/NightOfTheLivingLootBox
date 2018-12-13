//if (pause == 1){
x = display_get_width()/2;
y = display_get_height()/2;

draw_set_color(c_black);
draw_rectangle(0,0,room_width, room_height,0);

draw_set_valign(fa_top);

//Stats title
draw_set_halign(fa_middle);
draw_set_colour(c_white);
draw_set_font(fnt_UI_large);
draw_text(x + stats_x_offset + 380, y + stats_y_offset - 200, "Stats");

draw_set_halign(fa_left);
draw_set_font(fnt_UI);

var padding = 50;
//Box
draw_set_colour(c_red);
draw_rectangle(x + stats_x_offset - padding - (box_outline / 2), y + stats_y_offset - padding - (box_outline / 2), x + stats_x_offset + 750 + padding + (box_outline / 2), y + stats_y_offset  + 1000 + padding + (box_outline / 2), false);
draw_set_colour(c_black);
draw_rectangle(x + stats_x_offset - padding, y + stats_y_offset - padding, x + stats_x_offset + 750 + padding, y + stats_y_offset  + 1000 + padding, false);

//Level
draw_set_color(c_white);
draw_text(x + stats_x_offset + 0, y + stats_y_offset, "Level: ");
draw_set_color(c_lime);
draw_text(x + stats_x_offset + 185, y + stats_y_offset, obj_player.level);

//XP
draw_set_color(c_white);
draw_text(x + stats_x_offset + 340, y + stats_y_offset, "XP: ");
draw_set_color(c_lime);
draw_text(x + stats_x_offset + 450, y + stats_y_offset, obj_player.xp);
draw_text(x + stats_x_offset + 450 + (string_length(obj_player.xp) * 40), y + stats_y_offset, "/");
draw_text(x + stats_x_offset + 480 + (string_length(obj_player.xp) * 40), y + stats_y_offset, obj_player.max_xp);



//Money
draw_set_color(c_white);
draw_text(x + stats_x_offset + 0, y + stats_y_offset + 350 + y_space * 0, "Money: ");
draw_set_color(c_lime);
draw_text(x + stats_x_offset + 230, y + stats_y_offset + 350 + y_space * 0, obj_player.money);
draw_text(x + stats_x_offset + 230 + (string_length(obj_player.money) * 38), y + stats_y_offset + 350 + y_space * 0, "/");
draw_text(x + stats_x_offset + 270 + (string_length(obj_player.money) * 38), y + stats_y_offset + 350 + y_space * 0, obj_player.maxMoney);

//Movement Speed
draw_set_color(c_white);
draw_text(x + stats_x_offset + 0, y + stats_y_offset + 350 + y_space * 1, "Movement Speed: ");
draw_set_color(c_lime);
draw_text(x + stats_x_offset + 530, y + stats_y_offset + 350 + y_space * 1, obj_player.basespd);

//Fragility
draw_set_color(c_white);
draw_text(x + stats_x_offset + 0, y + stats_y_offset + 350 + y_space * 2, "Fragility: ");
draw_set_color(c_lime);
draw_text(x + stats_x_offset + 270, y + stats_y_offset + 350 + y_space * 2, obj_player.enemyDamage);


//Options
draw_set_color(c_aqua);

if (room == levelup)
{
	j = 0;

	for (j = 0; j < array_length_1d(abilities); j += 1)
	{
		draw_text(x + x_offset, y + j*y_space + y_offset, abilities[j])
	}

	draw_sprite(sprite_index, 0, x + x_offset - 80, y + mpos_levelup_menu*y_space + 20 + y_offset);
}

else if (room == invest)
{
	j = 0;

	for (j = 0; j < array_length_1d(invest_options); j += 1)
	{
		draw_text(x + x_offset, y + j*y_space + y_offset, invest_options[j])
	}
	
	draw_text(x + x_offset + 900, y + (array_length_1d(invest_options) / 2)*y_space + y_offset - 150, "x");
	draw_text(x + x_offset + 950, y + (array_length_1d(invest_options) / 2)*y_space + y_offset - 150, obj_player.betPile);
	
	draw_text(x + x_offset + 900, y + (array_length_1d(invest_options) / 2)*y_space + y_offset - 50, "money:");
	draw_text(x + x_offset + 1200, y + (array_length_1d(invest_options) / 2)*y_space + y_offset - 50, obj_player.money);
	
	draw_text(x + x_offset + 900, y + (array_length_1d(invest_options) / 2)*y_space + y_offset + 50, "bonus xp %:");
	draw_text(x + x_offset + 1400, y + (array_length_1d(invest_options) / 2)*y_space + y_offset + 50, floor((obj_player.bonus_xp * obj_player.betPile)*100));

	draw_sprite(sprite_index, 0, x + x_offset - 80, y + mpos_invest_menu*y_space + y_offset + 20);
}