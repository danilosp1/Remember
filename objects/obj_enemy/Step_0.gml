switch(state)
{
	case EnemyState.IDLE: EnemyStateIdle(); break;
	case EnemyState.MOVE: EnemyStateMove(); break;
	case EnemyState.ATACK: EnemyStateAtack(); break;
	case EnemyState.STOP: EnemyStateStop(); break;
}

if(state = EnemyState.ATACK){
	hspd = 0;
	sprite_index = spr_enemy_atack
}

if(state = EnemyState.IDLE){
	hspd = 0;
	sprite_index = spr_enemy_idle;
}



if(life == 0){
	obj_player.lobos_morte++;
	instance_destroy();
}