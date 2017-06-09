(* Counter 1 *)
let _ = print_endline "Counter 1 !"

let count_upto max =
	let rec aux = function
		|x when x > max -> ()
		|x -> let _ = print_endline (string_of_int x) in aux (x + 1)
	in aux 1
	
let counter_one = count_upto 10

(* Counter 2 *)
let _ = print_endline "Counter 2 !"

let range min max =
	let rec aux acc = function
		|x when x > max -> acc
		|x -> aux (x :: acc) (x + 1)
	in List.rev (aux [] min)

let counter_two = List.iter (function x -> print_endline (string_of_int x)) (range 1 10)

(* Counter 3 *)
let _ = print_endline "Counter 3 !"

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

(* Counter 4 *)
let _ = print_endline "Counter 4 !"

let count_upto_for x = for i = 1 to x do print_endline (string_of_int i) done

let counter_four = count_upto_for 10

(* Counter 5 *)
let _ = print_endline "Counter 5 !"

let count_upto_while x = 
	let count = ref 1 in
	while count.contents <= x do
		print_endline (string_of_int count.contents);
		incr count
	done

let counter_five = count_upto_while 10

(* Counter 6 *)
let _ = print_endline "Counter 6 !"

let for_upto min max func =
	let rec aux = function
		|x when x > max -> ()
		|x -> let _ = func x in aux (x + 1)
	in aux min

let counter_six = for_upto 1 10 (function x -> print_endline (string_of_int x))