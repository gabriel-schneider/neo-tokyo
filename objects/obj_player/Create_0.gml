event_inherited()

entity_set_base(id, "friction", 0.15)
entity_set_base(id, "max_speed", 2)
entity_set_base(id, "acceleration", 1)
entity_set_base(id, "jump_force", 5.4)

acceleration	= entity_get_base(id, "acceleration")
max_speed		= entity_get_base(id, "max_speed")
jump_force		= entity_get_base(id, "jump_force")

state_on_floor = false

mask_normal = spr_player
mask_crouch = spr_player_crouch

is_moveable = true
move_priority = 10