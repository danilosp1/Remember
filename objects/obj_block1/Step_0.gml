if(keyboard_check_pressed(ord("E"))){
	if(txtBox != noone){
		instance_destroy(obj_textbox);	
		txtBox = noone;
		obj_player.state = PlayerState.FREE;
		room_goto(rm01);
		instance_destroy();
	}
}