/// @description Уничтожение объектов-слов
for (var i = 0; i < array_length_1d(word_objects); i++)
{
	instance_destroy(word_objects[i]);
}