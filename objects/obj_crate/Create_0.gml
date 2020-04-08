/// @description create wall
my_wall = instance_create_layer(x,y,layer,obj_wall);
with(my_wall){
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
}