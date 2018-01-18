(* Using Fold-left *)
let list_make size value =
	let rec aux acc  = function
		|0 -> acc
		|x -> aux (value :: acc) (x - 1)
	in aux [] size

let counter_eight = ignore (List.fold_left (fun x y -> let _ = print_endline (string_of_int x) in x + y) 1 (list_make 10 1))