///@desc die bart die
with(obj_gun){
	instance_destroy();
}

instance_change(obj_player_corpse,true);

direction = point_direction(other.x, other.y, x, y);
h_spd = lengthdir_x(6, direction);
v_spd = lengthdir_y(4, direction)-2;

if(sign(h_spd) != 0){
	image_xscale = sign(h_spd);
}

global.kills -= global.kills_this_room;