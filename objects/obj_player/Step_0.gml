image_xscale = 2
image_yscale = 2

//Variables that check for player input
if (hascontrol)
{
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
	
}

//Calculate movement
var move = key_right - key_left;

xv = move * walksp;

yv = yv + grv;

if (place_meeting(x,y+1,obj_wall)) && (key_jump)
{
	yv = -7
}

/// Horizontal
repeat(abs(xv)){
    if (!place_meeting(x + sign(xv), y, obj_wall)){
        x += sign(xv);
    }else{
        xv = 0;
        break;
    }
}

//y axis collision checks
repeat(abs(yv)){
//Regular collision checks
    if (!place_meeting(x,y+sign(yv),obj_wall)){
        y += sign(yv);
    }else {
        yv = 0;
    }
}
//Animation
if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = 	spr_playerA;
	image_speed = 0;
	if (sign(yv) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (xv == 0)
	{
		sprite_index = spr_player
	}
	else
	{
		sprite_index = spr_playerR
	}
}

if keyboard_check(ord("A"))
{
	image_xscale = -2
}

if keyboard_check(ord("D"))
{
	image_xscale = 2
}

