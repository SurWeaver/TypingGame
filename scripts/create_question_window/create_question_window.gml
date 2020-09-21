///@desc create_question_window(x, y, width, height, type)
///@args x
///@args y
///@args width
///@args height

var xx = argument0;
var yy = argument1;
var width = argument2;
var height = argument3;

if (!instance_exists(oQuestionWindow))
{
	var qWindow = instance_create_layer(xx, yy, "QuestionWindows", oQuestionWindow);
	qWindow.width = width;
	qWindow.height = height;
}