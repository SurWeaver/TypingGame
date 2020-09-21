///@desc draw_scroll(x, y, string_width)
///@args x
///@args y
///@args string_width

var xx = argument0;
var yy = argument1;
var str_width = argument2;

draw_sprite(sScroll, 0, xx - sprite_get_width(sScroll), yy);
draw_sprite_stretched(sScroll, 1, xx, yy, str_width, sprite_get_height(sScroll));
draw_sprite(sScroll, 2, xx + str_width, yy);