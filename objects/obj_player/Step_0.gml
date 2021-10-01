#region teclado acess

key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
key_atack = keyboard_check_pressed(vk_space);

#endregion

switch(state)
{
	case PlayerState.FREE: PlayerStateFree(); break;
	case PlayerState.ATACK: PlayerStateAtack(); break;
	case PlayerState.DEATH: PlayerStateDeath(); break;
	case PlayerState.STOP: PlayerStateStop(); break;
}

var apm_id = layer_get_id("Arvore_pequena_mal");
var tp_id = layer_get_id("Tela_preta");
var apb_id = layer_get_id("Arvore_pequena_bem");
var enm_id = layer_get_id("Enemies_mal");
var enmb_id = layer_get_id("Enemies_bem");
var cm_id = layer_get_id("Chao_mal");
var cb_id = layer_get_id("Chao_bem");
var a1m_id = layer_get_id("Arvore_1_mal");
var a1b_id = layer_get_id("Arvore_1_bem");
var a2m_id = layer_get_id("Arvore_2_mal");
var a2b_id = layer_get_id("Arvore_2_bem");
var a3m_id = layer_get_id("Arvore_3_mal");
var a3b_id = layer_get_id("Arvore_3_bem");
var fm_id = layer_get_id("Fundo_mal");
var fb_id = layer_get_id("Fundo_bem");


if(check_cenary = 1)
{
	layer_set_visible(apm_id, false);
	layer_set_visible(cm_id, false);
	layer_set_visible(a1m_id, false);
	layer_set_visible(a2m_id, false);
	layer_set_visible(a3m_id, false);
	layer_set_visible(fm_id, false);
	layer_set_visible(enm_id, false);
	instance_deactivate_layer(enm_id);
	
	layer_set_visible(apb_id, true);
	layer_set_visible(tp_id, true);
	layer_set_visible(cb_id, true);
	layer_set_visible(a1b_id, true);
	layer_set_visible(a2b_id, true);
	layer_set_visible(a3b_id, true);
	layer_set_visible(fb_id, true);
	layer_set_visible(enmb_id, true);
	instance_activate_layer(enmb_id);
}
if(check_cenary = 2)
{
	layer_set_visible(apm_id, true);
	layer_set_visible(cm_id, true);
	layer_set_visible(a1m_id, true);
	layer_set_visible(a2m_id, true);
	layer_set_visible(a3m_id, true);
	layer_set_visible(fm_id, true);
	layer_set_visible(enm_id, true);
	instance_activate_layer(enm_id);
	
	layer_set_visible(apb_id, false);
	layer_set_visible(cb_id, false);
	layer_set_visible(a1b_id, false);
	layer_set_visible(a2b_id, false);
	layer_set_visible(a3b_id, false);
	layer_set_visible(fb_id, false);
	layer_set_visible(enmb_id, false);
	instance_deactivate_layer(enmb_id);
}

if(place_meeting(x + hspd, y, block)){
	hspd = -1;
}


