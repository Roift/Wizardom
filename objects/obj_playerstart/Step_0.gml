if (!place_meeting(x,y+sign(yv),obj_wall))
	{
        y += sign(yv);
    }
else 
	{
        yv = 0;
    }
