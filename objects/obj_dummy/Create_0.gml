event_inherited()
_friction = entity_get_base(id, "friction")
max_speed = random_range(0.5, 1.5)
_direction = choose(1, -1)
moving = true
alarm[0] = 1
