x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);

if(place_meeting(x,y,obj_shootable) || place_meeting(x,y,obj_fire_wall)){
	if(instance_exists(obj_player)){
		if(obj_player.has_power_gun){
			with(instance_place(x,y,obj_fire_wall)){
				hp--;
				flash = 3;
			}
		}
	}
	if(place_meeting(x,y,obj_enemy_boss)){
		audio_play_sound(snd_boss_hit, 10, false);
	}
	with(instance_place(x,y,obj_shootable)){
		hp--;
		flash = 3;
		hit_from = other.direction;
	}

	instance_destroy();

}



if(place_meeting(x,y,obj_wall)) { 
	while(place_meeting(x,y,obj_wall)){
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
	}
	spd = 0;
	instance_change(obj_hitspark, true);
	if(layer_exists("Ground_Tiles")){
		layer_add_instance("Ground_Tiles", id);
		depth += 1;
	}
} 