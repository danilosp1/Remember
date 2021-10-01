#region movimentação

image_speed = 1.4;
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

if(life2 <= 0){
instance_destroy();
}

if(hspd != 0) image_xscale = sign(hspd);

pos = sign(obj_player.x - x);
hspd = pos*4;

if(distance_to_object(obj_player) > distance){
	state2 = EnemyState2.IDLE
}

if(distance_to_object(obj_player) < 15){
	audio_play_sound(snd_lobo2, 2, false);
	state2 = EnemyState2.ATACK;
}