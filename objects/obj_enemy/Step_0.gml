//if the player has thrown money in range of the enemy, focus will shift
if (instance_exists(obj_distr) and distance_to_object(obj_distr)<=50)
{
	var dir = point_direction(x, y, obj_distr.x, obj_distr.y);
	
	var dir_x = lengthdir_x(1, dir);
	var dir_y = lengthdir_y(1, dir);
	
	var finalSpd = max(spd-(hit*spd),0);
	var xMove = dir_x * finalSpd;
	var yMove = dir_y * finalSpd;
	
	if (!TileMeeting(x + xMove, y + yMove, "Collision", 10))
	{
		x += xMove;
		y += yMove;
	}
}
//Move towards player
else if (instance_exists(obj_player))
{
	var dir = point_direction(x, y, obj_player.x, obj_player.y);
	
	var dir_x = lengthdir_x(1, dir);
	var dir_y = lengthdir_y(1, dir);
	
	var finalSpd = max(spd-(hit*spd),0);
	var xMove = dir_x * finalSpd;
	var yMove = dir_y * finalSpd;
	
	if (!TileMeeting(x + xMove, y + yMove, "Collision", 10))
	{
		x += xMove;
		y += yMove;
	}
}

//Angle sprite based on direction
image_angle = direction;

//Gradually reduce "just hit" effect
if (hit > 0) hit -= 0.05; else hit = 0;

//Destroy if hp is less than or equal to 0
if (hp <= 0) instance_destroy();