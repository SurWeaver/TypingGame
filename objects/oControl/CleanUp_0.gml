/// @description Очистка текущих словарей и статистики
ds_list_destroy(terms);
ds_map_destroy(definitions);

ds_list_destroy(stat_strings[? "strings"]);
ds_map_destroy(stat_strings);
ds_map_destroy(global.text);