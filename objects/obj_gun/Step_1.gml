// float a bit above character
x = obj_player.x+20;
y = obj_player.y-30;
if(obj_player.image_xscale == -1){
	x = obj_player.x-20;
}

if(obj_player.controller == 0){
	// follow mouse
	image_angle = point_direction(x,y, mouse_x, mouse_y);
} else {
	var controller_h = gamepad_axis_value(4, gp_axisrh);
	var controller_v = gamepad_axis_value(4, gp_axisrv);
	if( (abs(controller_h) > 0.2) || (abs(controller_v) > 0.2)){
		controller_angle = point_direction(0,0,controller_h, controller_v);
	}
	image_angle = controller_angle;
}

// fire button
key_shoot = mouse_check_button(mb_left);
// gamepad_button_check(4, gp_shoulderrb)

// prevent 60 bullets per sec
firing_delay -= 1;
var recoil_amt = 0;
if(key_shoot && firing_delay < 0){
	recoil_amt = max(0, recoil - 1);
	firing_delay = base_delay;
	ScreenShake(2,10);
	
	
	
	if(obj_player.has_power_gun){
		audio_sound_pitch(snd_power_shoot, choose(0.7, 0.8, 0.9));
		audio_play_sound(snd_power_shoot, 5, false);
	} else {
		audio_sound_pitch(snd_shoot, choose(0.7, 1.0, 1.3));
		audio_play_sound(snd_shoot, 5, false);
	}
	
	with(instance_create_layer(x,y,"Projectiles", bullet_type)){
		spd = other.bullet_speed;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
	
	with(obj_player){
		// kickback maybe
		sprite_index = spr_player;
		gunkickx = lengthdir_x(other.kickamount, other.image_angle-180);
		//gunkicky = lengthdir_y(1, other.image_angle-180);
	}
	
}
x -= lengthdir_x(recoil_amt,image_angle);
y -= lengthdir_y(recoil_amt,image_angle);



if((image_angle > 90) && (image_angle < 270)){
	image_yscale = -1;
} else {
	image_yscale = 1;
}

rotate++;
if(rotate == 360){ rotate = 0; }