powerup = other.powerup;

switch(powerup){
	case "doublejump":
		audio_play_sound(snd_doublejump, 10, false);
		jump_number = 2;
	break;
	
	case "shield":
		audio_play_sound(snd_shield, 10, false);
		if(!shield){
			shield = true;
			if((hp+1) >= max_hp){
				hp = max_hp;
			} else {
				hp++;
			}
		}
	break;
	
	case "fast_gun":
	with(obj_gun){
		base_delay = 5;
		kickamount = 12;
		alarm[0] = 10*room_speed;
	}
	break;
	
	case "power_gun":
		audio_play_sound(snd_power_gun, 10, false);
		has_power_gun = true;
		with(obj_gun){
			base_delay = 15;
			default_delay = 15;
			base_kickamount = 5;
			kickamount = 5;
			base_bullet_type = obj_power_bullet;
			bullet_type = base_bullet_type;
		}
		
	break;
	
	case "1up":
		audio_play_sound(snd_1up, 10, false);
		global.num_lives++;
	break;
	
	case "hp":
		audio_play_sound(snd_heal, 10, false);
		if((hp+1) >= max_hp){
			hp = max_hp;
		} else {
			hp++;
		}
	break;
	
	case "max_hp":
		audio_play_sound(snd_max_hp, 10, false);
		if(max_hp+1 >= 15){
			max_hp = 15;
		} else {
			max_hp++;
		}
	break;
}
instance_destroy(other);