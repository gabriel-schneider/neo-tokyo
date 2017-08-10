argument0.max_speed = entity_get_base(argument0, "max_speed") + 4
argument0._hspeed = argument0.max_speed*sign(argument0._direction)
argument0._vspeed = 0
argument0._gravity = 0
argument0.controllable = false