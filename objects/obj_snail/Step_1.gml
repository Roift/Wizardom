if (hp <= 0)
{
	with(instance_create_layer(x,y,layer,obj_snailD) )
		{
			direction = other.hitfrom;
			xv = lengthdir_x(3,direction);
			xv = lengthdir_y(3,direction);
			if (sign(xv) !=0) image_xscale = sign(xv);
		}


	instance_destroy();
}
