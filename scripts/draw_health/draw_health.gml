if (hp <= 0)
	return;
draw_set_color(c_white);
draw_set_font(fn_scroll);
draw_set_aligns(fa_center, fa_top);
var txt_width = string_width(string(hp));
var txt_height = string_height(string(hp));
var spr_width = sprite_get_width(sHealthIcon);
draw_sprite(sHealthIcon, 0, x - txt_width/2 - spr_width/2, y + txt_height/2);
draw_text(x, y, hp);