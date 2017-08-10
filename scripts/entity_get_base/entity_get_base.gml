///entity_set_base(instance, attribute, value)

if (!entity_is_valid(argument0))
{
	return false
}

return variable_instance_get(argument0, "base_" + argument1)

