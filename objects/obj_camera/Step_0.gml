///@description update camera

blur = !instance_exists(obj_player);

// update destination
if(instance_exists(follow)){
	x_to = follow.x;
	y_to = follow.y;
	if((follow).object_index == obj_player_corpse){
		x = x_to;
		y = y_to;
	}
}

// update camera position
x += (x_to - x) / 25;
y += (y_to - y) / 25;

x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

// screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));

camera_set_view_pos(cam, x-view_w_half, y-view_h_half);

if(layer_exists("BG_CamSkyFollow")){
	layer_y("BG_CamSkyFollow", y);	
}
if(layer_exists("BG_Cam0")){
	layer_x("BG_Cam0", x/2);
}
if(layer_exists("BG_Cam1")){
	layer_x("BG_Cam1", x/4);	
}
if(layer_exists("BG_Cam2")){
	layer_x("BG_Cam2", x/6);
}
if(layer_exists("BG_Cam3")){
	layer_x("BG_Cam3", x/32);
}

if(room == room_2) lightning_tick--;