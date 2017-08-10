
if ((current_time mod 3) != 0)
{
	exit
}

with (instance_create_layer(argument0.x, argument0.y, argument0.layer, obj_ghost))
{
	sprite_index = argument0.sprite_index
	image_alpha = 0.5
	image_speed = 0
	image_blend = make_color_rgb(100, 100, 255)
	image_xscale = argument0.image_xscale
	image_index = argument0.image_index
}