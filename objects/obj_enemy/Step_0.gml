var target = instance_exists(obj_distr) and distance_to_object(obj_distr)<=50 ? obj_distr : obj_player;

var dir = point_direction(x, y, target.x, target.y);
	
var dir_x = lengthdir_x(1, dir);
var dir_y = lengthdir_y(1, dir);
	
var finalSpd = max(spd-(hit*spd),0);
var xMove = dir_x * finalSpd;
var yMove = dir_y * finalSpd;
	
//if (!place_meeting(x + xMove + (collisionOffset * sign(dir_x)), y + yMove + (collisionOffset * sign(dir_y)), obj_wall))
//flag will be put in place if collision imminent
x_flag = (!place_meeting(x + xMove + (collisionOffset * sign(dir_x)), y, obj_wall)) ? false : true;
y_flag = (!place_meeting(x - xMove, y + yMove + (collisionOffset * sign(dir_y)), obj_wall)) ? false : true;
//won't move toward collision
if (!x_flag and !x_lock) x += xMove;
if (!y_flag and !x_lock) y += yMove; 
//if both flags are active, lock will be placed on x-angle
if (x_flag and y_flag)
	{
		x_lock = true;
	}
//lock on x-angle will force it to look for another path in the opposite direction of y
if (x_lock)
{
	y -= yMove; 
}
//if no collision is found on x-movement, lock will drop
x_lock = (!place_meeting(x + xMove + (collisionOffset * sign(dir_x)), y, obj_wall)) ? false : true;

//Angle sprite based on direction
image_angle = direction;

//Gradually reduce "just hit" effect
if (hit > 0) hit -= 0.05; else hit = 0;

//Destroy if hp is less than or equal to 0
if (hp <= 0) instance_destroy();