(* Robot model *)
type robot = {
	value:int;
	motor:(robot->robot);
	yielder:(robot->unit);
	stop:(robot->bool)
	}

let rec robot_activate = function
	|x when x.stop x -> ()
	|x -> let _ = x.yielder x in robot_activate (x.motor x)

let robot_counter = {
	value = 1;
	motor = (function x -> {x with value = x.value + 1});
	yielder = (function x -> print_endline (string_of_int x.value));
	stop = (function x -> x.value > 10)
	}
	
let counter_seven = robot_activate robot_counter