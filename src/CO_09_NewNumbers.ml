(* Remaking numbers *)
type digit = Zero | One | Two | Three | Four | Five | Six | Seven | Eight | Nine

type change = 
	|Changed of digit
	|Beyond
	
type number = digit list

let next_digit = function
	|Zero -> Changed One
	|One -> Changed Two
	|Two -> Changed Three
	|Three -> Changed Four
	|Four -> Changed Five
	|Five -> Changed Six
	|Six -> Changed Seven
	|Seven -> Changed Eight
	|Eight -> Changed Nine
	|Nine-> Beyond
	
let increment number =
	let rec aux acc adding = function
		|[] when adding -> One :: acc
		|[] -> acc
		|hd :: tl when adding -> begin match next_digit hd with
			|Beyond -> aux (Zero :: acc) true tl
			|Changed nouv -> aux (nouv :: acc) false tl
			end
		|hd :: tl -> aux (hd :: acc) false tl
	in List.rev (aux [] true number)
	
let string_of_digit = function
	|Zero -> "0"
	|One -> "1"
	|Two -> "2"
	|Three -> "3"
	|Four -> "4"
	|Five -> "5"
	|Six -> "6"
	|Seven -> "7"
	|Eight -> "8"
	|Nine-> "9"
	
let string_of_number number = number |> List.rev |> (List.map string_of_digit) |> (String.concat "")

let count_upto_number max =
	let rec aux = function
		|x when x = (increment max)-> ()
		|x -> let _ = print_endline (string_of_number x) in aux (increment x)
	in aux [One]
	
let counter_one = count_upto_number [Zero; One]
