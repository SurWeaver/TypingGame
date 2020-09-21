/// @description 
//после удаления oStats создаётся новое событие и т.д.
//а все данные stat_strings очищаются

strings = [];
written_words = [];
wordStartY = 10;
wordYs = [];
scrolling_speed = 25;
string_margin = 2;
chosen = 0;

scrolls_count = 0;
whole_time = 0;
strings_length = 0;
words_per_minute = 0;
mistakes_count = 0;
words_count = 0;

steps_before_any_input = room_speed * 3;
