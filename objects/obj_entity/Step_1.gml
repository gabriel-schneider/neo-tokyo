if (__ghosted)
{
	if (!place_meeting(x, y, obj_entity))
	{
		__ghosted = false
		is_collidable = true
	}
}
guider = entity_check_guider(id)