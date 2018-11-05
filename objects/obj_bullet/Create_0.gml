//Point towards mouse, randomize slightly
direction = point_direction(x,y,mouse_x,mouse_y)
direction += random_range(-4,4);

//Set speed & image angle
speed = 16;
image_angle = direction;