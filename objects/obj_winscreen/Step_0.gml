switch(moving){
	case 1:
		pos_x++;
		if(pos_x >= w/2-32){
			moving = 2;
		}
	break;
	case 2:
		pos_y++;
		if(pos_y >= h/2){
			moving = 3;
		}
	break;
	case 3:
		pos_x--;
		if(pos_x <= 0){
			moving = 4;
		}
	break;
	case 4:
		pos_y--;
		if(pos_y <= 0){
			moving = 1;
		}
	break;
}

layer_x("Backgrounds_1", -pos_x);
layer_y("Backgrounds_1", -pos_y);