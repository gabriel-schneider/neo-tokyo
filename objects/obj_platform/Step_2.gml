var xx = lengthdir_x(_speed, _direction)
var yy = lengthdir_y(_speed, _direction)

if (!place_meeting(x + xx, y + yy, obj_solid))
{
	x += xx
	y += yy
} else
{
	_direction += 180
	var xx = lengthdir_x(_speed, _direction)
	var yy = lengthdir_y(_speed, _direction)
	x += xx
	y += yy
}