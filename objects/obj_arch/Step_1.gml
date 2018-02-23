//Makes object follow player
if (instance_exists(follow))
{
x = obj_player.x;
y = obj_player.y;
}

//Fires fireball
firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
		firingdelay = 1;
		ScreenShake(2,10);
		with (instance_create_layer(x,y, "Magicbeam",obj_magicbeam))
		{
			speed = 15;
			direction = point_direction(x, y, mouse_x, mouse_y);
			image_angle = direction;
		}
}
