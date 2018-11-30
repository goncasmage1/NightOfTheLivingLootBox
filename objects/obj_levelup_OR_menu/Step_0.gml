if (room == rm_menu)
{
	var move_menu = 0;
	move_menu -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
	move_menu += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

	if (move_menu !=  0)
	{
		mpos_menu += move_menu;
		if (mpos_menu < 0) mpos_menu = array_length_1d(menu_pause) -1;
		if (mpos_menu > array_length_1d(menu_pause) -1) mpos_menu = 0;
	}
}

if (room == levelup)
{
	var move_menu_levelup = 0;
	move_menu_levelup -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
	move_menu_levelup += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

	if (move_menu_levelup != 0)
	{
		mpos_levelup_menu += move_menu_levelup;
		if (mpos_levelup_menu < 0) mpos_levelup_menu = array_length_1d(abilities) -1;
		if (mpos_levelup_menu > array_length_1d(abilities) -1) mpos_levelup_menu = 0;
	}

}

var push;

push = max(keyboard_check_pressed(vk_enter), 0);

if (push == 1) 
{
	switch (mpos_menu)
	{
		case 0: 
		{
			room_goto(level1);
			break;
		}
		case 1:
		{
			room_goto(levelup);
			var push2;

			push2 = max(keyboard_check_pressed(vk_enter), 0);
			if (push2 == 1)
			{
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
		
		}
		case 2:
		{
			break;
		}
	
	
	}
}

if (pause = 1)
{
	instance_activate_all();
	instance_destroy();
}