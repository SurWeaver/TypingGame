///@desc draw_sprite_part_stretched(sprite, left, top, width, height, x1, y1, x2, y2)
///@args sprite
///@args left коэффициент отношения от 0 до 1, где 0 - начало, 1 - конец спрайта
//касается и 3 нижних переменных
///@args top
///@args width
///@args height
///@args x1
///@args y1
///@args x2
///@args y2
var spr = argument0;
var left = argument1;
var top = argument2;
var width = argument3;
var height = argument4;
var x1 = argument5;
var y1 = argument6;
var x2 = argument7;
var y2 = argument8;


var tex = sprite_get_texture(spr, 0);

draw_primitive_begin_texture(pr_trianglestrip, tex);

draw_vertex_texture(x1, y1, left, top);
draw_vertex_texture(x1, y2, left, top+height);
draw_vertex_texture(x2, y1, left+width, top);
draw_vertex_texture(x2, y2, left+width, top+height)

draw_primitive_end();