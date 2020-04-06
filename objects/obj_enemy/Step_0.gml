v_spd = v_spd + grv;

// horizontal collision
if(place_meeting(x+h_spd, y, obj_wall)){
	while(!place_meeting(x+sign(h_spd),y,obj_wall)){
		x += sign(h_spd);
	}
	h_spd = -h_spd;
}

// actually move
x += h_spd;


//vertical collision
if(place_meeting(x, y+v_spd, obj_wall)){
	while(!place_meeting(x,y+sign(v_spd),obj_wall)){
		y += sign(v_spd);
	}
	v_spd = 0;
}

// actually move
y += v_spd;




// animation
if(!place_meeting(x, y+1, obj_wall)){
	// in the air/falling
	sprite_index = spr_enemy_airborne;
	image_speed = 0;
	image_xscale = sign(h_spd) * size;
	image_yscale = size;
	if(sign(v_spd) > 0){
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	image_speed = 1;
	if(h_spd == 0){
		sprite_index = spr_enemy;
	} else {
		sprite_index = spr_enemy_running;
		image_xscale = sign(h_spd) * size;
		image_yscale = size;
	}
}

