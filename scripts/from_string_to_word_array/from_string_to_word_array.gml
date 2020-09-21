///@desc from_string_to_word_array(string)
///@args string
var str = argument0;
var arr = [];
var i = 0;
var space_pos = string_pos(" ", str);
while (space_pos != 0)
{
	arr[i] = string_copy(str, 1, space_pos-1);
	str = string_replace(str, arr[i]+" ", "");
	i++;
	var space_pos = string_pos(" ", str);
}
arr[i] = str;
return arr;