/// @description Insert description here
// You can write your code in this editor

spd = 8;
hspd = 0;
vspd = 0;
grv = 0.4;
life2 = 1000;
damage = 4;

image_xscale = -1;
image_speed = 0.6;

distance = 230;

state2 = EnemyState2.IDLE;

enum EnemyState2
{
	IDLE,
	MOVE,
	ATACK,
	STOP
}