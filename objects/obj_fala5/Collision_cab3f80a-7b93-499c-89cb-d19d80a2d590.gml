#region textbox

	txt = "Liv Scarthson: Esse lobo esta estranho... Que sentimento ruim... O ar esta mudando.";

	if(place_meeting(x, y, obj_player)){
		if(txtBox == noone){
			if(obj_player.x < 512){
				txtBox = instance_create_layer(518, 360, "Text_layer", obj_textbox);
				txtBox.text = txt;
			}else{
				txtBox = instance_create_layer(obj_hud.x, obj_hud.y, "Text_layer", obj_textbox);
				txtBox.text = txt;
			}
			obj_player.state = PlayerState.STOP;
			audio_stop_sound(sound0);
		}else if(keyboard_check_pressed(ord("E"))){
			if(txtBox != noone){
				instance_destroy(obj_textbox);
				obj_player.check_cenary = 2;
				audio_play_sound(sound1, 1, true);
				txtBox = noone;
				obj_player.state = PlayerState.FREE;
				instance_destroy();
			}
		}
	}

#endregion