var xx = lengthdir_x(_speed, _direction)
var yy = lengthdir_y(_speed, _direction)

if (!entity_move(id, [xx, yy]))
{
	_direction += 180
}