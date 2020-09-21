/// @description 
draw_set_color(c_white);
draw_set_font(fn_UI);
draw_set_aligns(fa_left, fa_top);

draw_text(10, 10, string_hash_to_newline(global.text[? "fullInstruction"]));