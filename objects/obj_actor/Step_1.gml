event_inherited()

// Apply modifier step event and update duration
event_fire(id, "before_apply_modifiers")
for (var i=0; i<ds_list_size(modifiers); i++)
{
	var modifier = modifiers[| i]
	if modifier[? "duration_max"] > 0
	{
		var time = modifier[? "duration"]
		time -= 1
		if (time <= 0)
		{
			if (ds_map_exists(modifier, "end"))
			{
				script_execute(modifier[? "end"], id)
			}
			ds_list_delete(modifiers, i)
			i --
			continue
		}
		modifier[? "duration"] = time
	}
	
	
	if (ds_map_exists(modifier, "step"))
	{		
		script_execute(modifier[? "step"], id)
	}
}

event_fire(id, "after_apply_modifiers")

if (_hspeed != 0 && on_floor) {
	var ground_inst = instance_place(x, y + 1, obj_solid) 
	if (ground_inst) {
		if (ground_inst.fs_material != actor_footstep_get_surface()) {
			actor_footstep_set_surface(ground_inst.fs_material)
		}
	}
	fs_counter += abs(image_index_prev - image_index)//abs(_hspeed)
	var m = image_number/fs_steps_per_cycle
	if (fs_counter >= m)
	{
		fs_counter = 0
		actor_footstep_execute()		
	}
}
