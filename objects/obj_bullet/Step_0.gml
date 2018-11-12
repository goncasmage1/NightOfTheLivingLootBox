var dir_x = lengthdir_x(1, direction);
var dir_y = lengthdir_y(1, direction);
	
var xMove = dir_x * spd;
var yMove = dir_y * spd;
	
if (place_meeting(x + xMove, y + yMove, obj_wall)) instance_destroy();

x += xMove;
y += yMove;