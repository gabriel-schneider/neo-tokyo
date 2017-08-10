///entity_set_base(instance, attribute, value)

if (!entity_is_valid(argument0))
{
	return false
}

return variable_instance_set(argument0, "base_" + argument1, argument2)

