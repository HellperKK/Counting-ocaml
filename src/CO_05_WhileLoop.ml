(* Using while loop *)
let count_upto_while x = 
	let count = ref 1 in
	while count.contents <= x do
		print_endline (string_of_int count.contents);
		incr count
	done

let counter_five = count_upto_while 10