///Initialize variables

basespd = 5;			//default movement speed
spd = 5;				//current movement speed 
weapon = 0;				//current weapon
weaponspd = 5;			//current shooting speed
ammo = 0;				//when ammo reaches zero, return to default weapon (unlimited ammo)
cooldown = 0;			//able to fire again when cooldown reaches zero (based on weaponspd)
money = 100;			//amount of money (health) the player has
enemyDamage = 20;
aiming = false;
hipFireAccuracy = 20;
aimingAccuracy = 4;
rounds = 1;