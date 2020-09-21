///@description create_flying_string(x, y, color, gravity, string)
///@args x
///@args y
///@args color
///@args gravity
///@args string
var xx = argument0;
var yy = argument1;
var color = argument2;
var grav = argument3;
var str = argument4;
var letterObj = instance_create_layer(xx, yy, "Letters", oFlyingLetter);
letterObj.color = color;
letterObj.grv = grav;

if (str == " ")
{
	letterObj.value = "[";
	letterObj.angle = 90;
}
else
{
	letterObj.value = str;
}