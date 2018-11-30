switch (mpos_menu)
{
	case 0: 
	{
		break;
	}
	case 1:
	{
		room_goto(levelup)
		x = display_get_width()/2;
		y = display_get_height()/2;

		draw_set_color(c_black);
		draw_rectangle(0,0,room_width, room_height,0);

		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_score);
		draw_set_color(c_green);

		var m;

		for (m = 0; m < array_length_1d(obj_player.abilitiesText); m += 1)
		{
			draw_text(x + space, y + m*space, obj_player.abilitiesText[m])
		}

		draw_sprite(sprite_index, 0, x + 16, y + mpos_menu*space);
		
		
		switch (mpos_levelup_menu)
		{
			case 0:
			{
				obj_player.maxMoney += 10;
				break;
			}
			case 1:
			{
				obj_player.spd += 10;
				break;
			}
			case 2:
			{
				obj_levelup_OR_menu.pause = 1;
				room_goto(level1)
				break;
			}
			break;
			
		}
		
	}
	case 2:
	{
		break;
	}
	
	
}