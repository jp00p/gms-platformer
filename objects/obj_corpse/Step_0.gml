if(done == 0){
	v_spd = v_spd + grv;

	// horizontal collision
	if(place_meeting(x+h_spd, y, obj_wall)){
		while(!place_meeting(x+sign(h_spd),y,obj_wall)){
			x += sign(h_spd);
		}
		h_spd = 0;
	}

	// actually move
	x += h_spd;


	//vertical collision
	if(place_meeting(x, y+v_spd, obj_wall)){
		
		if(v_spd > 0){
			done = 1;
			image_index = 1;
		}
		while(!place_meeting(x,y+sign(v_spd),obj_wall)){
			y += sign(v_spd);
		}
		v_spd = 0;
	}

	// actually move
	y += v_spd;
}