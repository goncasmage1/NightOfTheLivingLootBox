if (room == level1) {
	draw_set_halign(fa_center);

	//SHADOW TEXT
	draw_set_alpha(0.5);
	draw_set_colour(c_black);
	draw_set_font(fnt_smaller);
	draw_text(
		2+camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		2+camera_get_view_y(view_camera[0])+32,"Round");
	

	draw_set_font(fnt_score);
	draw_text(
		2+camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		2+camera_get_view_y(view_camera[0])+80,rounds);


	//REGULAR TEXT
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		camera_get_view_y(view_camera[0])+33,"Round");
	

	draw_set_font(fnt_score);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,
		camera_get_view_y(view_camera[0])+81,rounds);
	
	//ENEMY COUNTER
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/1.1,
		camera_get_view_y(view_camera[0])+32,"Enemies Left");
	

	draw_set_font(fnt_smaller);
	draw_text(
		camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/1.1,
		camera_get_view_y(view_camera[0])+75,obj_spawner.round_enemies);

	//MONEY
	draw_set_halign(fa_left);

	//Text
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		2+camera_get_view_x(view_camera[0])+32,
		2+camera_get_view_y(view_camera[0])+32, "Money: ");

	//Amount
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		2+camera_get_view_x(view_camera[0])+180,
		2+camera_get_view_y(view_camera[0])+32, money);
		
	// /
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		2+camera_get_view_x(view_camera[0])+250,
		2+camera_get_view_y(view_camera[0])+32, "/");
		
	//MaxAmount
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		2+camera_get_view_x(view_camera[0])+270,
		2+camera_get_view_y(view_camera[0])+32, maxMoney);
	
	//XP
	//Text
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		2+camera_get_view_x(view_camera[0])+32,
		2+camera_get_view_y(view_camera[0])+80, "XP: ");

	//XP
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		2+camera_get_view_x(view_camera[0])+100,
		2+camera_get_view_y(view_camera[0])+80, xp);
		
	// /
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		2+camera_get_view_x(view_camera[0])+190,
		2+camera_get_view_y(view_camera[0])+80, "/");
		
	//MaxHP
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		2+camera_get_view_x(view_camera[0])+210,
		2+camera_get_view_y(view_camera[0])+80, max_xp);
		
	//AMMO
	//Text
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
	draw_text(
		2+camera_get_view_x(view_camera[0])+32,
		2+camera_get_view_y(view_camera[0])+128, "Ammo: ");

	//Amount
	draw_set_alpha(1);
	draw_set_colour(c_white);
	draw_set_font(fnt_smaller);
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
	draw_set_font(fnt_smaller);
	
	var text1 = "After an in-depth financial analysis, executives at UbiArts have concluded that ";
	var text2 = "aggressive lootboxes are much more profitable than regular lootboxes. In order to ";
	var text3 = "test this new business model, the company has developed a new game...\n\n";
	var text4 = "Are you ready to face... the UnLooted?";
	
	draw_text_ext_transformed(
		2+camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,
		2+camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2,
		text1 + text2 + text3 + text4,
		40,
		1000,
		1,
		1,
		0);
}