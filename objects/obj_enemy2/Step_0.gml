switch(state2)
{
	case EnemyState2.IDLE: EnemyStateIdle2(); break;
	case EnemyState2.MOVE: EnemyStateMove2(); break;
	case EnemyState2.ATACK: EnemyStateAtack2(); break;
	case EnemyState2.STOP: EnemyStateStop(); break;
}

if(state2 = EnemyState2.ATACK){
	hspd = 0;
	sprite_index = spr_enemy2_atack
}

if(state2 = EnemyState2.IDLE){
	hspd = 0;
	sprite_index = spr_enemy2_idle;
}



if(life2 <= 0){
	obj_player.lobos_morte++;
	instance_destroy();
}
