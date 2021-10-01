#region movimentação

var move = key_right - key_left; //vai ser 1 ou -1, sign pra não ter problemas.

image_speed = 1;
hspd = move*spd;
vspd = vspd + grv;

if(hspd == -1*spd or hspd == 1*spd){
	image_xscale = sign(hspd);
}

if(place_meeting(x + hspd, y-100, obj_wall)){
	while(!place_meeting(x + sign(hspd), y, obj_wall)){
		x += sign(hspd);
	}
	hspd = 0;
}
x += hspd;

if(place_meeting(x, y + vspd, obj_wall)){
	while(!place_meeting(x, y + sign(vspd), obj_wall)){
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd;

#endregion

#region sprites

if(hspd != 0) image_xscale = sign(hspd);
	

if(hspd == -1*spd or hspd == 1*spd){
	sprite_index = spr_player_running;
}

if(hspd == 0){
	sprite_index = spr_player_idle;
}


	
#endregion

#region ataque

if(key_atack){
	state = PlayerState.ATACK;
}	

#endregion

#region morte


if(global.die <= 0)
{
	if(morte_check = 1)
	{
		if(global.life <= 0)
		{
			instance_create_depth(obj_player.x, 0, -2000, obj_redscreen);
		
			if(obj_player.x < 512)
			{
				instance_create_depth(512, 320, -2001, obj_restart);
			}else if(obj_player.x > 7738)
			{
				instance_create_depth(7738, 320, -2001, obj_restart);
			}else
			{
				instance_create_depth(obj_player.x, 320, -2001, obj_restart);
				show_debug_message(string(obj_player.x));
			}
		
			audio_stop_sound(sound0);
			state = PlayerState.DEATH;
		}
	}
	
	else if(morte_check = 2)
	{
		if(global.life <= 0)
		{
			instance_create_depth(obj_player.x, 320, -2000, obj_telafinal);
			state = PlayerState.STOP;
			room_goto(rm_morte);
		}
	}
}

#endregion