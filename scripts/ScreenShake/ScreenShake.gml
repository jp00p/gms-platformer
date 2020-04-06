///@desc Make the screen shake
///@arg magnitude set strength
///@arg frames set length of shake 60 = 1sec @ 60fps

with(obj_camera){

	if(argument[0] > shake_remain){
		shake_magnitude = argument[0];
		shake_remain = argument[0];
		shake_length = argument[1];
	}

}