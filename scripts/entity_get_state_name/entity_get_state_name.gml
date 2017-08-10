///entity_get_state_name(state)

switch (argument0)
{
	case entity_state.normal: return "Normal/Standing"; break;
	case entity_state.crouch: return "Crouch"; break;
	case entity_state.jump: return "Jump/On Air"; break;
}