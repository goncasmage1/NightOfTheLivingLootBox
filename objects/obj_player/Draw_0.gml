if (room == level1) {
	draw_set_halign(fa_center);
	
	draw_set_font(fnt_UI);
	//REGULAR TEXT
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		camera_get_view_y(view_camera[0])+35,"Round");
	

	
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		camera_get_view_y(view_camera[0])+90,rounds);
	
	draw_set_font(fnt_UI_small);
	//ENEMY COUNTER
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/1.1,
		camera_get_view_y(view_camera[0])+32,"Enemies Left");
	

	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/1.1,
		camera_get_view_y(view_camera[0])+75,obj_spawner.round_enemies);

	//MONEY
	draw_set_halign(fa_left);

	//Text
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		2+camera_get_view_x(view_camera[0])+32,
		2+camera_get_view_y(view_camera[0])+32, "Money: ");

	//Amount
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		2+camera_get_view_x(view_camera[0])+170,
		2+camera_get_view_y(view_camera[0])+32, money);
		
	// /
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		2+camera_get_view_x(view_camera[0])+180+(string_length(money) * 18),
		2+camera_get_view_y(view_camera[0])+32, "/");
		
	//MaxAmount
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		2+camera_get_view_x(view_camera[0])+180+(string_length(money) * 18)+20,
		2+camera_get_view_y(view_camera[0])+32, maxMoney);
	
	//XP
	//Text
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		2+camera_get_view_x(view_camera[0])+32,
		2+camera_get_view_y(view_camera[0])+80, "XP: ");

	//XP
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		2+camera_get_view_x(view_camera[0])+100,
		2+camera_get_view_y(view_camera[0])+80, xp);
		
	// /
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		2+camera_get_view_x(view_camera[0]) + 100 + (string_length(xp) * 21),
		2+camera_get_view_y(view_camera[0])+80, "/");
		
	//MaxXP
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		2+camera_get_view_x(view_camera[0]) + 100 + (string_length(xp) * 21) + 20,
		2+camera_get_view_y(view_camera[0])+80, max_xp);
		
	//AMMO
	//Text
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		2+camera_get_view_x(view_camera[0])+32,
		2+camera_get_view_y(view_camera[0])+128, "Ammo: ");

	//Amount
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_text(
		2+camera_get_view_x(view_camera[0])+180,
		2+camera_get_view_y(view_camera[0])+128, weapon ? ammo : "9999");
		
	draw_self();

}
else if (room == intro) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_UI_small);
	
	var text1 = "After an in-depth financial analysis, executives at UbiArts have concluded that ";
	var text2 = "aggressive lootboxes are much more profitable than regular lootboxes. In order to ";
	var text3 = "test this new business model, the company has developed a new game...\n\n";
	var text4 = "Are you ready to face... the UnLooted?\n\n\n\n\n";
	var text5 = "Press Enter to continue";
	
	draw_text_ext_transformed(
		2+camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,
		2+camera_get_view_y(view_camera[0]) + 400,
		text1 + text2 + text3 + text4 + text5,
		40,
		1000,
		1,
		1,
		0);
}
else if (room == keys) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_UI_small);
		
	draw_text(
		2+camera_get_view_x(view_camera[0])+400,
		2+camera_get_view_y(view_camera[0])+300,
		"W, A, S, D to walk");
		
	draw_text(
		2+camera_get_view_x(view_camera[0])+800,
		2+camera_get_view_y(view_camera[0])+300,
		"LMB to shoot");

	draw_text(
		2+camera_get_view_x(view_camera[0])+800,
		2+camera_get_view_y(view_camera[0])+350,
		"RMB to switch weapon");
		
	draw_text(
		2+camera_get_view_x(view_camera[0])+1250,
		2+camera_get_view_y(view_camera[0])+300,
		"Shift to throw money");
	draw_text(
		2+camera_get_view_x(view_camera[0])+1250,
		2+camera_get_view_y(view_camera[0])+350,
		"(Distract the UnLooted)");
		
	draw_text(
		2+camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		2+camera_get_view_y(view_camera[0])+604,
		"Press Enter to continue");
}
