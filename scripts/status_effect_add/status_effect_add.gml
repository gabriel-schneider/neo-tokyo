///status_effect_add(instance, status_effect)

if !object_is_ancestor(argument0.object_index, obj_entity)
{
	show_debug_message("Cannot apply status effect, instance is not a entity!")
	return false
}

var effect_list = (argument0).effect_list

// @TODO: Check if effect its unique!

var new_effect = ds_map_create()
ds_map_copy(new_effect, global.status_effect_database[? argument1])
new_effect[? "duration_max"] = new_effect[? "duration"]
ds_list_add(effect_list, new_effect)

script_execute(new_effect[? "start"], argument0)
