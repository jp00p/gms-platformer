var facing = 1;
if(instance_exists(obj_player)){
	//facing var for stationary enemies
	if(obj_player.x < x){
		var facing = -1;
	} 
}
if(!bounce){

	v_spd = v_spd + grv;

	// don't walk off edges
	if ((grounded) && (afraid_of_heights) && (!place_meeting(x + (sprite_width/2), y+1, obj_wall))){
		h_spd = -h_spd;
	}

	// horizontal collision
	if(place_meeting(x+h_spd, y, obj_wall)){
		while(!place_meeting(x+sign(h_spd),y,obj_wall)){
			x += sign(h_spd);
		}
		h_spd = -h_spd;	
	}
	
	x += h_spd;



	//vertical collision
	if(place_meeting(x, y+v_spd, obj_wall)){
		while(!place_meeting(x,y+sign(v_spd),obj_wall)){
			y += sign(v_spd);
		}
	
		v_spd = 0;
	
	}

	// actually move
	if(flying){
		y = ystart + amp*sin(x/freq);
	} else {
		y += v_spd;
	}



} else {
	h_spd = speed;
	if(place_meeting(x+speed, y, obj_wall) || place_meeting(x, y+speed, obj_wall)){
		move_bounce_all(true);
	}

}



// animation
if(!place_meeting(x, y+1, obj_wall)){
	// in the air/falling
	grounded = false;
	if(!simple_sprite){
		sprite_index = default_air_sprite;
		image_speed = 0;
		if(sign(v_spd) > 0){
			image_index = 1; // going down
		} else {
			image_index = 0; // going up
		}
	}
	if(h_spd == 0){
		image_xscale = sign(facing) * size;
	} else {
		image_xscale = sign(h_spd) * size;
	}
	image_yscale = size;
	
} else {
	grounded = true;
	image_speed = 1;
	sprite_index = default_sprite;
	if(h_spd != 0){
		if(!simple_sprite){
			sprite_index = default_running_sprite;
		}
		image_xscale = sign(h_spd) * size;
		image_yscale = size;
	} else {
		
		image_xscale = sign(facing) * size;
	}
}

