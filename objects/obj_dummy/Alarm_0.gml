
if (random(100) < 25) {
	moving = false
} else
{
	_direction *= -1
	moving = true
}

alarm[0] = random_range(30, 120)