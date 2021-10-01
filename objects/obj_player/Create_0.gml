/// @description Insert description here
// You can write your code in this editor

#region variaveis 

spd = 3;
hspd = 0;
vspd = 0;
grv = 0.2;
global.life = 50;
global.maxlife = 50;
global.die = 0;
image_speed = 1;
depth = -y;
morte_check = 1;

lobos_morte = 0;

check_cenary = 1;

block = obj_block or obj_block_1 or obj_block_2 or obj_block_3 or obj_block_4 or obj_block_5;

#endregion

#region states

state = PlayerState.FREE;
enum PlayerState
{
	FREE,
	ATACK,
	DEATH,
	STOP
}

#endregion
