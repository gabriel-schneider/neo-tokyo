///event_detach(entity_id, event_name, script_name, all)

with (argument[0]) {

	var list = events[? argument[1]]	
	var s = ds_list_size(list)
	
	for (var i = 0; i < s ; i++) {
		var event = list[| i]
		if (script_get_name(event.script) == argument[2]) {
			instance_destroy()
			ds_list_delete(list, i)	
			if (argument_count < 4) {
				break
			} else {
				if (argument[3] == false) {
					break
				}
			}
		}
	}
}