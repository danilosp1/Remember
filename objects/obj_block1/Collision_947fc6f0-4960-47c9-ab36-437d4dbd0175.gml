#region textbox


txt = "Liv Scarthson: Estou pronta.";

if(place_meeting(x, y, obj_player)){
	obj_player.x = obj_player.x - 10;
	obj_player.hspd = -1;
	if(txtBox == noone){			
		if(obj_player.x < 512){
			txtBox = instance_create_layer(518, 360, "Text_layer", obj_textbox);
			txtBox.text = txt;
		}else{
			txtBox = instance_create_layer(518, 360, "Text_layer", obj_textbox);
			txtBox.text = txt;
		}
		obj_player.state = PlayerState.STOP;
	}
}

#endregion