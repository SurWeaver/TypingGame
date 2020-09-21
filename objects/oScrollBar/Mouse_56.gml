/// @description 
//изменить глобал
//global.seconds_per_letter = global.difficulties[int64(2*value)];
switch(value)
{
	case 0: global.seconds_per_letter = global.difficulties[0]; break;
	case 0.5: global.seconds_per_letter = global.difficulties[1]; break;
	case 1: global.seconds_per_letter = global.difficulties[2]; break;
}