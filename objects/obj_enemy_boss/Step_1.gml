#region death

facing = 1;
if(instance_exists(obj_player)){
	//facing var for stationary enemies
	if(obj_player.x < x){
		facing = -1;
	} 
}

if(hp <= 0){
	// dead
	if(owner){// for spawner only
		owner.num_monsters--;
	}
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
	with(my_gun){
		instance_destroy();
	}
	if(instance_exists(obj_player)){
		global.kills++;
		global.kills_this_room++;
		with(obj_game){
			kill_textscale = 2;
		}
	}
	instance_destroy();
}
#endregion

if(h_spd == 0){
	spd_mult = 1;
} else {
	spd_mult = sign(h_spd);
}

switch(boss_move){
	case 2: // jump
		h_spd = spd_mult*2;
		jump_timer -= choose(1,2);
		if(jump_timer <= 0){
			v_spd = -jump_speed;
			jump_timer = jump_timer_base;
		}
		with(obj_enemy_boss_gun){
			countdown_rate = 120;
		}
	break;
	
	case 3: // stand still
		h_spd = spd_mult*0;
		with(obj_enemy_boss_gun){
			countdown_rate = 60;
		}
	break;
	
	case 4: // jump crazy
		h_spd = spd_mult*6;
		jump_timer -= choose(1,2);
		if(jump_timer <= 0){
			v_spd = -jump_speed;
			jump_timer = jump_timer_base;
		}
		with(obj_enemy_boss_gun){
			countdown_rate = 90;
		}
	break;

	case 1:
	default:
		// move n shoot
		h_spd = spd_mult*4;
		with(obj_enemy_boss_gun){
			countdown_rate = 60;
		}
	break;	
}