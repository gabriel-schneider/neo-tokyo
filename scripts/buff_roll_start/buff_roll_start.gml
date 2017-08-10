argument0.max_speed = entity_get_base(argument0, "max_speed") + 1 + argument0.state_speed_mod_crouch
argument0._hspeed = argument0.max_speed*sign(argument0._direction)
argument0._friction = 0
argument0.controllable = false

entity_set_state(argument0, entity_state.crouch)
