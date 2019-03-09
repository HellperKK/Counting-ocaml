let print_int_bis x = let _ = x |> string_of_int |> print_endline in x

let count_piped max =
  let rec aux x = if x <= max
    then x |> print_int_bis |> succ |> aux
  in aux 1

let counter_twelve = count_piped 10
