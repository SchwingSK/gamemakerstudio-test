// Destroy
instance_destroy();

// Create random foam particles
repeat (4)
{
	instance_create_layer(x + irandom_range(-30, 30), y - 160, layer, obj_foam_particle);
}