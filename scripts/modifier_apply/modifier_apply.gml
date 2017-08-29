///modifier_apply(instance, modifier_name)

if !object_is_ancestor(argument0.object_index, obj_entity)
{
	show_debug_message("[Modifier] Cannot apply, instance is not a entity!")
	return false
}

var modifiers = (argument0).modifiers

var new_modifier = ds_map_create()
ds_map_copy(new_modifier, global.modifier_database[? argument1])

if (new_modifier[? "is_unique"])
{
	var l = ds_list_size(modifiers)
	for (var i = 0; i < l; i++)
	{
		var e = modifiers[| i];
		if (e[? "name"] == argument1)
		{
			show_debug_message("[Modifier] Cannot apply: '" + argument1 + "' is unique!")
			ds_map_destroy(new_modifier)
			return false			
		}
	}
}

new_modifier[? "duration_max"] = new_modifier[? "duration"]

ds_list_add(modifiers, new_modifier)

script_execute(new_modifier[? "start"], argument0)

return true
