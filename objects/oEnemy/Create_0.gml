/// @description 
hp = 100;
transformed = false;
damage = 10;

spd = global.walk_speed;

targetX = room_width*3/4;

at = en1Attack;
def = en1Defence;
idle = en1Idle;
ok = en1OK;
type = irandom_range(1, 4);

switch (type)
{
	case 2:
		at = en2Attack;
		def = en2Defence;
		idle = en2Idle;
		ok = en2OK;
		break;
	case 3:
		at = en3Attack;
		def = en3Defence;
		idle = en3Idle;
		ok = en3OK;
		break;
	case 4:
		at = en4Attack;
		def = en4Defence;
		idle = en4Idle;
		ok = en4OK;
		break;
}