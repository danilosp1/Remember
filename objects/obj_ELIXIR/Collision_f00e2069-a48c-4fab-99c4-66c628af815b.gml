#region textbox

	txt = "Liv Scarthson: Meu rem... elixir, seria bom toma-lo antes de sair.                 *Elixir consumido*";

	if(keyboard_check_pressed(ord("E"))){
		if(txtBox == noone){
			if(obj_player.x < 512){
				txtBox = instance_create_layer(518, 360, "Text_layer", obj_textbox);
				txtBox.text = txt;
			}else{
				txtBox = instance_create_layer(518, 360, "Text_layer", obj_textbox);
				txtBox.text = txt;
			}
			obj_player.state = PlayerState.STOP;
		}else{
			if(txtBox != noone){
				instance_destroy(obj_textbox);	
				txtBox = noone;
				obj_player.state = PlayerState.FREE;
				instance_destroy(obj_block);
				instance_destroy();
			}
		}
	}

#endregion