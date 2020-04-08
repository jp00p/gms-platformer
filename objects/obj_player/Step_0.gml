#region control
if(has_control){
	// get input keys
	key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	key_jump = keyboard_check_pressed(vk_space);
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

// apply movement speed (no acceleration)
h_spd = (move * spd) + gunkickx;
gunkickx = 0;
v_spd = (v_spd + grv) + gunkicky;
gunkicky = 0;


// jump
//can_jump -= 1;
if((can_jump > 0) && key_jump && jump_current > 0){
	v_spd = -jump_speed;
	jump_current--;
	//can_jump = 0;
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
	if(v_spd > 0){
        jump_current = jump_number;
    }
	v_spd = 0;
}

// actually move
y += v_spd;




// animation

var aimside = sign(mouse_x - x);
if(aimside != 0){
	image_xscale = aimside;
}

if(!place_meeting(x, y+1, obj_wall)){
	// in the air/falling
	if(sign(v_spd) > 0){
		sprite_index = spr_player_airborne_down;
	} else {
		sprite_index = spr_player_airborne;
	}
} else {
	can_jump = 10;
	if(sprite_index == spr_player_airborne_down){
		audio_sound_pitch(snd_landing, choose(0.8, 1.0, 1.2));
		audio_play_sound(snd_landing, 4, false);
		repeat(5){
			with(instance_create_layer(x,bbox_bottom,"Projectiles",obj_dust)){
				v_spd = 0;
			}
		}
	}
	image_speed = 1;
	if(h_spd == 0){
		sprite_index = spr_player;
	} else {
		sprite_index = spr_player_running;
		if(aimside != sign(h_spd)){
			sprite_index = spr_player_running_backwards;
		} 
	}
}
