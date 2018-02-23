yv = yv + grv;

//Horizontal Collision
if (place_meeting(x+xv,y,obj_wall))
{
	while (!place_meeting(x+sign(xv),y,obj_wall))
	{
		x = x + sign(xv);
	}
	xv = -xv;
}
x = x + xv;

//Vertical Collision
if (place_meeting(x,y+yv,obj_wall))
{
	while (!place_meeting(x,y+sign(yv),obj_wall))
	{
		y = y + sign(yv);
	}
	yv = 0;
}
y = y + yv;

//Animation
if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = 	spr_snail
	image_speed = 0;
	if (sign(yv) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (xv == 0)
	{
		sprite_index = spr_snail
	}
	else
	{
		sprite_index = spr_snail
	}
}

if (xv != 0) image_xscale = sign(xv);
