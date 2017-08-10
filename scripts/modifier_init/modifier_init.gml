show_debug_message("[Modifier] Initializing...")
var file = file_text_open_read("status_effect_database.json")
var str = ""
while (!file_text_eof(file))
{
	str += file_text_read_string(file)
	file_text_readln(file)
}
file_text_close(file)

global.modifier_database = json_decode(str)

show_debug_message("[Modifier] Converting events to indexes...")

var key = ds_map_find_first(global.modifier_database)
while (key != undefined)
{
	var m = global.modifier_database[? key]
	
	var events = ["start", "step", "end"]
	
	for (var i=0; i<array_length_1d(events); i+=1)
	{
		if (ds_map_exists(m, events[i]))
		{
			var script_index = asset_get_index(m[? events[i]])
			if (script_index >= 0) {
				m[? events[i]] = script_index
			} else {
				show_debug_message("[Modifier] Not found script for event '" + events[i] + "' in '" + key + "'")
			}
		}   
	}
	
	m[? "name"] = key
	
	if (!ds_map_exists(m, "is_unique"))
	{
		m[? "is_unique"] = false
	}
	
	key = ds_map_find_next(global.modifier_database, key)
}

show_debug_message("[Modifier] DONE!")
