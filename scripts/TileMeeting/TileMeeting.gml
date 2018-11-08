
///@arg x
///@arg y
///@arg tilemap

var xx, yy, tilemap, offset, xp, yp, meeting;

xx = argument0;
yy = argument1;
tilemap = argument2;
offset = argument3;

//save our current position
xp = x;
yp = y;

//move to the position where we wanna check for a tile collision
x = xx;
y = yy;

//check for collision on all four corners of the collision mask
meeting =		tilemap_get_at_pixel(tilemap, bbox_right + offset, bbox_top - offset)
				||
				tilemap_get_at_pixel(tilemap, bbox_right + offset, bbox_bottom + offset)
				||
				tilemap_get_at_pixel(tilemap, bbox_left - offset, bbox_top - offset)
				||
				tilemap_get_at_pixel(tilemap, bbox_left - offset, bbox_bottom + offset);

//Move back to the original position
x = xp;
y = yp;

//Return wether or not there was a collision
return(meeting);
