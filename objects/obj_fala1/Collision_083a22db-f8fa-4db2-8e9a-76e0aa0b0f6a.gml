#region textbox

	txt = "Liv Scarthson: Meio dia, preciso buscar recursos na floresta.";
	txt_1 = "*A / D -> movimento*";
	txt_2 = "*Space -> ataque*";
	txt_3 = "*E -> interage*";

	if(place_meeting(x, y, obj_player)){
		if(txtBox == noone){
			if(obj_player.x < 512){
				txtBox = instance_create_layer(518, 360, "Text_layer", obj_textbox);
				txtTutorial = instance_create_layer(20, 320, "Text_layer", obj_othertxt);
				txtTutorial.txt1 = txt_1;
				txtTutorial.txt2 = txt_2;
				txtTutorial.txt3 = txt_3;
				txtBox.text = txt;
			}else{
				txtBox = instance_create_layer(obj_hud.x, obj_hud.y, "Text_layer", obj_textbox);
				txtTutorial = instance_create_layer(20, 320, "Text_layer", obj_othertxt);
				txtTutorial.txt1 = txt_1;
				txtTutorial.txt2 = txt_2;
				txtTutorial.txt3 = txt_3;
				txtBox.text = txt;
			}
			obj_player.state = PlayerState.STOP;
		}else if(keyboard_check_pressed(ord("E"))){
			if(txtBox != noone){
				audio_play_sound(sound0, 1, true);
				instance_destroy(obj_textbox);
				instance_destroy(obj_othertxt);
				txtBox = noone;
				obj_player.state = PlayerState.FREE;
				instance_destroy();
			}
		}
	}

#endregion