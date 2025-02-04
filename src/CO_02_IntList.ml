(* Using a range type *)
type range = {min:int; max:int}
exception Bad_order

let make_range min max = match (min, max) with
	|(a, b) when a > b -> raise Bad_order
	|(a, b) -> {min = a; max = b}

let count_range range =
	let rec aux = function
		|x when x = range.max -> ()
		|x -> let _ = print_endline (string_of_int x) in aux (x + 1)
	in aux range.min

let counter_three = count_range (make_range 1 11)

