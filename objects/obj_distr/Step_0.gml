
if (spd > 0) {
	var dir_x = lengthdir_x(1, direction);
	var dir_y = lengthdir_y(1, direction);
	
	var xMove = dir_x * spd;
	var yMove = dir_y * spd;

	x_flag = (!place_meeting(x + xMove, y, obj_wall)) ? false : true;
	y_flag = (!place_meeting(x, y + yMove, obj_wall)) ? false : true;
	
	if (range <= 0 || x_flag || y_flag)
	{
		spd = 0;
	}
	else {
		x += xMove;
		y += yMove;
	
		range = range - 1;
	}
}