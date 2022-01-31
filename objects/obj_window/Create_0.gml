// ID of fire instance created on this window
// If there is no fire, this is equal to noone
my_fire = noone;

// Alpha for the fire frame used to fade away
// when fire is extinguished
fire_fade_alpha = 0;

// Y offset for the smoke instance to appear on
// this window
smoke_y_offset = -268;

// Create smoke instance and store its ID in the
// my_smoke variable
my_smoke = instance_create_layer(x, y + smoke_y_offset, "Spawns", obj_smoke);

// Set the alpha of my_smoke to 0 so it's not visible
// by default
my_smoke.image_alpha = 0;