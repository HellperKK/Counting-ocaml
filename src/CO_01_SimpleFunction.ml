(* Simple function *)
let count_upto max =
	let rec aux x = if x <= max
		then let _ = print_endline (string_of_int x) in aux (x + 1)
	in aux 1

let counter_one = count_upto 10
