///modifier_apply(instance, modifier_name)

if !object_is_ancestor(argument0.object_index, obj_entity)
{
	show_debug_message("[Modifier] Cannot apply, instance is not a entity!")
	return false
}

var modifiers = (argument0).modifiers
var modifiers_count = ds_list_size(modifiers)
for (var i = 0; i < modifiers_count; i++)
{
	var modifier = modifiers[| i]
	if (modifier[? "name"] == argument1)
	{
		script_execute(modifier[? "end"], argument0)
		ds_map_destroy(modifier)
		ds_list_delete(modifiers, i)
		return true
	}
}

return false
