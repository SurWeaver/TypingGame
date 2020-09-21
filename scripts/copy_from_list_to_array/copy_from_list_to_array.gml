///@desc copy_from_list_to_array(ds_list, array)
///@args ds_list
///@args array
var list = argument0;
var arr = argument1;

for (var i = 0; i < ds_list_size(list); i++)
{
	arr[@ i] = list[| i];
}