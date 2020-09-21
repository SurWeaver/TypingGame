///@desc array_without_repeats(arr)
///@args arr
var arr = argument0;

var loc_arr = [];
var loc_i = 0;

for (var i = 0; i < array_length_1d(arr); i++)
{
	if (!is_in_array(loc_arr, arr[i]))
	{
		loc_arr[loc_i] = arr[i];
		loc_i++;
	}
}


return loc_arr;