///@desc count_passed_time_percentage()
///вызывается из oScroll: использует его переменные spell_name и timer

var average_spell_time = string_length(spell_name) * global.seconds_per_letter;

var passed_time_percentage = timer / average_spell_time;

return passed_time_percentage;