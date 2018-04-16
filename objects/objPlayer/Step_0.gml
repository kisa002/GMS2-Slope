/// @description Move & Gravity
// HolyKnight - vnycall74@naver.com
// http://haeyum.com && http://holykisa.tistory.com

if(keyboard_check(vk_left))
{
	if(place_free(x - spd, y))
	{
		x -= spd;
		
		if(!isJump)
			for(i=20; i>0; i--)
			{
				if(place_free(x, y + i))
				{
					y += i;
					break;
				}
			}
	}
	else
	{
		for(i=0; i<dir; i++)
		{
			if(place_free(x - spd, y - i))
			{
				x -= spd;
				y -= i + i / 2;
				
				break;
			}
		}
	}
}

if(keyboard_check(vk_right))
{
	if(place_free(x + spd, y))
	{
		x += spd;
		
		if(!isJump)
			for(i=20; i>0; i--)
			{
				if(place_free(x, y + i))
				{
					y += i;
					break;
				}
			}
	}
	else
	{		
		for(i=0; i<dir; i++)
		{
			if(place_free(x + spd, y - i))
			{
				x += spd;
				y -= i + i / 2;
				
				break;
			}
		}
	}
}

if(keyboard_check_pressed(vk_up) && !isJump)
{
	isJump = true;
	
	vspeed -= jmp;
	gravity = gra;
}

if(!place_free(x, y + vspeed))
{	
	isJump = false;
	
	move_contact_solid(270, -vspeed);

	gravity = 0;
	vspeed = 0;
}
else if(place_free(x, y + gra) && vspeed == 0)
{
	gravity = gra;
	vspeed += 1;
}