/// @description Player picks cash up
if (money + 10 <= maxMoney) {
	instance_destroy(other);
	money = money + 10;
}