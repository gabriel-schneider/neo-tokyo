var entity = instance_position(mouse_x, mouse_y, obj_entity)

if (entity)
{
	with (entity)
	{
		instance_destroy()
	}
} else
{
	instance_create_layer(mouse_x, mouse_y, "common", obj_dummy)
}