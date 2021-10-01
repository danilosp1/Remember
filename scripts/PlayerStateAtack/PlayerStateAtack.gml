#region movimentação

var move = key_right - key_left; //vai ser 1 ou -1, sign pra não ter problemas.

hspd = move*spd;
vspd = vspd + grv;

if(hspd == -1*spd or hspd == 1*spd){
	image_xscale = sign(hspd);
}

if(place_meeting(x, y + vspd, obj_wall)){
	while(!place_meeting(x, y + sign(vspd), obj_wall)){
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd;

#endregion

hspd = 0;
vspd = 0;

for(i = 0; i < 3; i++){
	x = x + sign(image_xscale);
}

var obj = instance_create_depth(x, y+30, -10, obj_shot); 
obj.dir = image_xscale

if(sprite_index != spr_player_atack){
	sprite_index = spr_player_atack;
	image_speed = 1.4;
	image_index = 0;
}