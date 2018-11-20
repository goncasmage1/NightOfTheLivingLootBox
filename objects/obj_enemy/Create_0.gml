//Initialize variables
hp = 5;			//number of hits the enemy can take
hit = 0;		//whether or not the enemy has been hit this frame
spd = 1.5;		//movement speed
collisionOffset = 10.0;
distractionRadius = 150.0;
attackInterval = 0.5 * 1000000;
attackCounter = 0.0;
isAttacking = false;
attackStartProximity = 2.0;
attackEndProximity = 3.0;
target = obj_player;
damage = 30.0;
x_flag = false;
y_flag = false;
x_lock = false;