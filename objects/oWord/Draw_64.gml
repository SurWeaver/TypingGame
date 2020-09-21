/// @description 
draw_set_aligns(fa_center, fa_center);
draw_text(x*4, y*4, name);
if (hover)
{	
	draw_set_aligns(fa_left, fa_top);
	draw_9slice_box(sWindow, 10, view_hport[0]/3, view_wport[0]*0.7, view_hport[0]-10);
	var new_desc = string_wordwrap_width(description, view_wport[0]*0.7-10, 1, false);
	new_desc = string_hash_to_newline(new_desc);
	draw_text(15, view_hport[0]/3, new_desc);
}