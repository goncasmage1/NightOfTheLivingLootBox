menu_pause = ["Continue", "Level up"];


space = 64;
mpos_menu = 0;
mpos_levelup_menu = 0;
abilities = ["Increase max Money", "Increase movement speed", "Back to game"];
considerPress = room == rm_menu;

pause = 0;
//pause = 0;

////if the player can level up
//if (!obj_player.levellingUp){
	
//	//pauses everything while the player levels up
//	instance_deactivate_all(true);
//	pause = 1;
//}
//else{
	
//	//when the player is done leveling up unpauses everything
//	instance_activate_all();
//	pause = 0;
//}