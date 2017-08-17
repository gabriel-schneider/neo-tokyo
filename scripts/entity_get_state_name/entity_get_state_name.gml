///entity_get_state_name(state)

switch (argument0)
{
	case actor_state.normal: return "Normal/Standing"; break;
	case actor_state.crouch: return "Crouch"; break;
	case actor_state.jump: return "Jump/On Air"; break;
}