event_inherited()

// Apply modifier step event and update duration
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
