//Initialize variables
hp = 5;			//number of hits the enemy can take
hit = 0;		//whether or not the enemy has been hit this frame
spd = 2;		//movement speed
collisionOffset = 10.0;
distractionRadius = 150.0;
attackInterval = 1.0 * 1000000;
attackCounter = 0.0;
isAttacking = false;
attackStartProximity = 5.5;
attackEndProximity = 6.0;
target = obj_player;
damage = 30.0;
x_flag = false;
y_flag = false;
x_lock = false;