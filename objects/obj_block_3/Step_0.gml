if(keyboard_check_pressed(ord("E"))){
	if(txtBox != noone){
		instance_destroy(obj_textbox);
		obj_enemy.state = EnemyState.IDLE;
		obj_enemy2.state2 = EnemyState2.IDLE;
		txtBox = noone;
		obj_player.state = PlayerState.FREE;
	}
}
	
if(obj_player.lobos_morte == 6){
	instance_destroy();
}	