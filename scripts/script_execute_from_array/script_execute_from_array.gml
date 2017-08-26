///script_execute_from_array(script_id, [args])

var index, args
index = argument[0]
args = []

if (argument_count > 1) {
	args = argument[1]
}

switch (array_length_1d(args))
{
    case 1: script_execute(index, args[0]); break;
	case 2: script_execute(index, args[0], args[1]); break;
	case 3: script_execute(index, args[0], args[1], args[2]); break;
	case 4: script_execute(index, args[0], args[1], args[2], args[3]); break;
    default: script_execute(index);
}
 
