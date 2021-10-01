#region vida

var hp_ = global.life;
var maxhp_ = global.maxlife;

healtbar_width = 200;
healtbar_height = 24;
healtbar_x = 75;
healtbar_y = 517;

draw_sprite(spr_lifebarbg, 0, healtbar_x, healtbar_y);
draw_sprite_stretched(spr_lifebar, 0, healtbar_x, healtbar_y, (hp_/maxhp_) * healtbar_width, healtbar_height);
draw_sprite(spr_lifebarBorder, 0, healtbar_x, healtbar_y);


#endregion
