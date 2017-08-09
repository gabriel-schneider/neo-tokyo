for (var i=0; i<ds_list_size(effect_list); i+=1)
{
	var e = effect_list[| i]
	var time = e[? "duration"]
	time -= 1
	if (time <= 0)
	{
		script_execute(e[? "end"], id)
		ds_list_delete(effect_list, i)
		i -= 1
		continue
	}
	script_execute(e[? "step"], id)
	e[? "duration"] = time
};