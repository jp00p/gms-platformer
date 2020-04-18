if(has_weapon){
	my_gun = instance_create_layer(x, y, "Gun", obj_enemy_gun);
	with(my_gun){
		owner = other.id;
		gun_bullet = other.gun_bullet;
		range = other.gun_range;
	}
} else {
	my_gun = noone;
}

owner = noone;

if(bounce){
	speed = 3;
	direction = irandom_range(0,45);
}