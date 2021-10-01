/// @description Insert description here
// You can write your code in this editor

obj_player.state = PlayerState.STOP;

//draw textbox
if(room = rm_casa){
	if(obj_player.x < 512){
		draw_sprite(spr_textbox, 0, x, y);
		draw_set_font(fnt_text);
		draw_text_ext(x + 7, y + 4, text, textHeight_ + 20, boxWidth_ - 14);
	}else{
		draw_sprite(spr_textbox, 0, x, y);
		draw_set_font(fnt_text);
		draw_text_ext(x + 7, y + 4, text, textHeight_ + 20, boxWidth_ - 14);
	}
}else if(room = rm01){
	if(obj_player.x < 512){
		draw_sprite(spr_textbox, 0, x, y);
		draw_set_font(fnt_text);
		draw_text_ext(x + 7, y + 4, text, textHeight_ + 20, boxWidth_ - 14);
	}else if(obj_player.x > 7738){
		draw_sprite(spr_textbox, 0, camera_get_view_x(view_camera[0]) + 512, y);
		draw_set_font(fnt_text);
		draw_text_ext((camera_get_view_x(view_camera[0]) + 512) + 7, y + 4, text, textHeight_ + 20, boxWidth_ - 14);
	}else{
		draw_sprite(spr_textbox, 0, obj_hud.x, obj_hud.y);
		draw_set_font(fnt_text);
		draw_text_ext(obj_hud.x + 7, obj_hud.y + 4, text, textHeight_ + 20, boxWidth_ - 14);
	}
}

