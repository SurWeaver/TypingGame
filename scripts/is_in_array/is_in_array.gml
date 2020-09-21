///@desc is_in_array(arr, value)
///@args arr
///@args value
var arr = argument0;
var value = argument1;
if (array_length_1d(arr) == 0)
	return false;
for (var i = 0; i < array_length_1d(arr); i++)
{
	if (arr[i] == value)
		return true;
}

return false;