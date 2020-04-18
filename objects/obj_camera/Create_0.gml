///@description setup camera
cam = view_camera[0];
follow = obj_player;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
x2 = xstart;
y2 = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;

buff = 32;

blur = false;

timeCounter = 0;
timeStep = 0.05;
oscillatorValue = 0;
oscillatorValueAbs = 0;
if os_type == os_android
{
    //distort the sampler uvs according to the screen ratio in the mobile devices...
    vRatio = display_get_gui_width() / display_get_gui_height();
}else{
    vRatio = 1.0;
}

lightning_delay = 2*room_speed;
lightning_chance = 0;
lightning_tick = lightning_delay;