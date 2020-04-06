if(hp <= 0){
	with(instance_create_layer(x,y,"Enemies",obj_corpse)){
		// fling!
		direction = other.hit_from;
		h_spd = lengthdir_x(3, direction);
		v_spd = lengthdir_y(3, direction)-2;
		if(sign(h_spd) != 0){
			image_xscale = sign(h_spd) * other.size;
			image_yscale = other.size;
		}
	}
	instance_destroy();
}