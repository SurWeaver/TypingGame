/// @description 
if (hp < 0)
{
	draw_set_font(fn_big);
	draw_set_aligns(fa_center, fa_center);
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0, 0, view_wport[0], view_hport[0], false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(view_wport[0]/2, view_hport[0]/2, global.text[? "gameOverMessage"]);//"Ничего, всё ещё получится");
	draw_sprite_ext(sGhost, image_index, 128, 128, 4, 4, 0, c_white, 1);
	draw_sprite_ext(sGhost, image_index, view_wport[0]-128, 128, 4, 4, 0, c_white, 1);
}