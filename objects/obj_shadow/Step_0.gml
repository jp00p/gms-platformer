if(instance_exists(obj_player)){
	x = obj_player.x;
	if timer <=0 {
		shadowfloor = collision_line(obj_player.x,obj_player.y,obj_player.x,obj_player.y + 200, obj_wall,true,0); //checks 400px below player as max distance
		if shadowfloor !=noone {
			visible = true;
			y = shadowfloor.y -5;
			var dist = (obj_player.y - shadowfloor.y )/200; //calculating the size increase by checking distance between players Y and ground Y
			 image_xscale = 1.4 + dist;
			 image_yscale = 1.4 + dist;
			 image_alpha = 0.5 + (dist/3);
		} else {
			visible = false; //don't draw shadow at all
		}
		timer = 1;
	} else {
		timer -=1;
	}
}