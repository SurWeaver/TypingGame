/// @description 
if (global.state != states.wait)
{
	draw_set_font(fn_main);
	draw_set_color(c_white);
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);
	
	draw_text(x, y, spell_name);

	draw_set_color(c_green);
	var inputedText = string_copy(spell_name, 1, cursor_index-1);
	
	//чтобы знать, где находится курсор и куда пихать ошибочную букву
	cursorX = x + string_width(inputedText);
	draw_text(x, y, inputedText);
}