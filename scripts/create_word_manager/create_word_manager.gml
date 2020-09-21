///@desc create_word_manager(word_array)
///@args word_array
var arr = argument0;

var wm = instance_create_layer(0, 0, "Stats", oWordManager);

array_copy(wm.words, 0, arr, 0, array_length_1d(arr));