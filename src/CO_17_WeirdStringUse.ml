let print_char_ord car minus = (int_of_char car)
  |> (function x -> x - minus)
  |> string_of_int
  |> print_endline

let count_string chaine minus =
  let rec aux i = if i < String.length chaine
    then let _ = print_char_ord chaine.[i] minus in aux (i + 1)
  in aux 0

let counter_seventeen = count_string "abcdefghij" 96
