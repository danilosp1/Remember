#region textbox

	txt = "Liv Scarthson: E u, prepReciSo, v o L t a r. P r A ca SA";

	if(obj_player.lobos_morte == 7){
		if(txtBox == noone){
			if(obj_player.x < 512){
				txtBox = instance_create_layer(518, 360, "Text_layer", obj_textbox);
				txtBox.text = txt;
			}else if(obj_player.x > 7738){
				txtBox = instance_create_layer(camera_get_view_x(view_camera[0]), 360, "Text_layer", obj_textbox);
				txtBox.text = txt;
			}else{
				txtBox = instance_create_layer(obj_hud.x, obj_hud.y, "Text_layer", obj_textbox);
				txtBox.text = txt;
			}
			obj_player.state = PlayerState.STOP;
		}else if(keyboard_check_pressed(ord("E"))){
			if(txtBox != noone){
				instance_destroy(obj_textbox);
				txtBox = noone;
				obj_player.state = PlayerState.FREE;
				obj_player.morte_check = 2;
				instance_destroy();
			}
		}
	}

#endregion