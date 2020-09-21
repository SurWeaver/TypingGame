draw_self();
if (mouseHovered)
	draw_set_color(c_white);
else
	draw_set_color(c_dkgray);
//draw_line_width(x+value*sprite_width, y, x+value*sprite_width, y+sprite_height, 5);
draw_sprite_ext(sScroller, 0, x+value*sprite_width, y,
				4, 4, 0, c_white, 1);
draw_set_font(fn_UI);
draw_set_color(c_white);
draw_set_aligns(fa_left, fa_center);
var rightText = value;

switch (value)
{
	case 0: rightText = diff[0]; break;
	case 0.5: rightText = diff[1]; break;
	case 1: rightText = diff[2]; break;
}
draw_text(x, y+35, rightText);

draw_set_aligns(fa_left, fa_bottom);
draw_text(x, y-10, text);