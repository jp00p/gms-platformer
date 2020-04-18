portal_color = make_color_rgb(irandom(255),irandom(255),irandom(255));
image_blend = portal_color;
flash = 0;
if(instance_exists(teleport_to)){
	with(teleport_to){
		image_blend = other.portal_color;
	}
}