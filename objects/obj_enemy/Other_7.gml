if(sprite_index = spr_enemy_atack){
	
	if(distance_to_object(obj_player) < 15){
	global.life -= damage;
	
		if(obj_player.x > 7738){
			instance_create_layer(7226, 0, "Tela_preta", obj_danoscreen);
		}else{
			instance_create_layer(camera_get_view_x(view_camera[0]), 0, "Tela_preta", obj_danoscreen);
		}
	}
	audio_stop_sound(snd_lobo1);
	state = EnemyState.IDLE;
}