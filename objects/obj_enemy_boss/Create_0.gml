boss_move_interval = 8*room_speed;
boss_timer = boss_move_interval;
boss_move = 1;




owner = noone; // spawner only

jump_timer_base = 2*room_speed;
jump_timer = jump_timer_base;

if(has_weapon){
	my_gun = instance_create_layer(x, y, "Gun", obj_enemy_boss_gun);
	with(my_gun){
		owner = other.id;
		countdown = 60;
		countdown_rate = 60;
		gun_bullet = other.gun_bullet;
		range = other.gun_range;
	}
} else {
	my_gun = noone;
}

