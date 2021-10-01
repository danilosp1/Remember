#region movimentação

image_speed = 0.4;
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

if(hspd != 0) image_xscale = sign(hspd);

if(life == 0){
	instance_destroy();
}

if (distance_to_object(obj_player) < distance){ 
	state = EnemyState.MOVE;
		sprite_index = spr_enemy_run;
}
