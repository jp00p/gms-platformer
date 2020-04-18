firing_delay = 0; // tick

default_delay = 40;
base_delay = default_delay;

base_bullet_speed = 25;
bullet_speed = base_bullet_speed;

base_recoil = 0; // no recoil on a book...
recoil = base_recoil;

base_kickamount = 1;
kickamount = base_kickamount;

base_bullet_type = obj_bullet;
bullet_type = base_bullet_type;

rotate = 0; // tick for powerup
controller_angle = 0;

if(!global.has_gun){ instance_destroy(); }