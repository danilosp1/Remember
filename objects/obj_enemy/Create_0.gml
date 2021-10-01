/// @description Insert description here
// You can write your code in this editor

spd = 8;
hspd = 0;
vspd = 0;
grv = 0.4;
life = 100;
damage = 1;

image_xscale = -1;
image_speed = 0.6;

distance = 300;

state = EnemyState.IDLE;

enum EnemyState
{
	IDLE,
	MOVE,
	ATACK,
	STOP
}