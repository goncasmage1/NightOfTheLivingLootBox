var target = instance_exists(obj_distr) and distance_to_object(obj_distr)<=50 ? obj_distr : obj_player;

var dir = point_direction(x, y, target.x, target.y);
	
var dir_x = lengthdir_x(1, dir);
var dir_y = lengthdir_y(1, dir);
	
var finalSpd = max(spd-(hit*spd),0);
var xMove = dir_x * finalSpd;
var yMove = dir_y * finalSpd;
	
if (!place_meeting(x + xMove + (collisionOffset * sign(dir_x)), y + yMove + (collisionOffset * sign(dir_y)), obj_wall))
{
	x += xMove;
	y += yMove;
}

//Angle sprite based on direction
image_angle = direction;

//Gradually reduce "just hit" effect
if (hit > 0) hit -= 0.05; else hit = 0;

//Destroy if hp is less than or equal to 0
if (hp <= 0) instance_destroy();