///event_fire(entity_id, event_name)

with (argument[0]) {
	if (!ds_map_exists(events, argument[1])) {
		return false
	}
	
	var list = events[? argument[1]]
	var s = ds_list_size(list)
	for (var i = 0; i < s; i++)
	{
		var event = list[| i]
		script_execute_from_array(event.script, event.args)	
	}
	return true
}