/// @description Insert description here
// You can write your code in this editor
var dir_x = lengthdir_x(1, direction);
var dir_y = lengthdir_y(1, direction);

	
	
var xMove = dir_x * spd;
var yMove = dir_y * spd;
	
if (TileMeeting(x + xMove, y + yMove, "Collision", 0)) instance_destroy();



if (range <= 0)
{
	spd = 0;
}
else {
x += xMove;
y += yMove;
	
range = range - 1;}