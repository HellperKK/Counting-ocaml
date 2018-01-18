(* Using homemade for loop *)
let for_upto min max func =
	let rec aux = function
		|x when x > max -> ()
		|x -> let _ = func x in aux (x + 1)
	in aux min

let counter_six = for_upto 1 10 (function x -> print_endline (string_of_int x))