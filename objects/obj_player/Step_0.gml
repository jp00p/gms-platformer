#region control
if(has_control){
	// get input keys
	key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	key_jump = keyboard_check(vk_space) || keyboard_check(ord("W"));
	key_run = keyboard_check(vk_shift);

	if((key_left) || (key_right) || (key_jump)){
		controller = 0;
	}

	if(abs(gamepad_axis_value(4, gp_axislh)) > 0.2){
		key_left = abs(min(gamepad_axis_value(4,gp_axislh),0));
		key_right = max(gamepad_axis_value(4,gp_axislh),0);
		controller = 1;
	}

	if(gamepad_button_check_pressed(4,gp_face1)){
		key_jump = 1;
		controller = 1;
	}

} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}
#endregion


spd = walk_spd;

if(key_run) spd = run_spd;

// calculate left/right move
var move = (key_right - key_left);

// apply movement speed
h_spd = move * spd;
v_spd = v_spd + grv;


// jump
if(place_meeting(x, y+1, obj_wall) && key_jump){
	v_spd = -8;
}


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
	if(sign(v_spd) > 0){
		sprite_index = spr_player_airborne_down;
	} else {
		sprite_index = spr_player_airborne;
	}
} else {
	if(sprite_index == spr_player_airborne_down){
		audio_sound_pitch(snd_landing, choose(0.8, 1.0, 1.2));
		audio_play_sound(snd_landing, 4, false);
	}
	image_speed = 1;
	if(h_spd == 0){
		sprite_index = spr_player;
	} else {
		sprite_index = spr_player_running;
		image_xscale = sign(h_spd);
	}
}
