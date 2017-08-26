///event_attach(entity_id, event_name, script_name, [args])

with (argument0) {
	if (!ds_map_exists(events, argument1)) {
		events[? argument1] = ds_list_create()
	}
	
	var list	= events[? argument1]	
	var event	= instance_create_layer(0, 0, "common", obj_event)
	
	event.script	= asset_get_index(argument2)
	event.args		= argument3
	
	instance_deactivate_object(event)
	ds_list_add(list, event)
}