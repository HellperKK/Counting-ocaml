let print_int_endline x = (string_of_int x) |> print_endline

let counter max =
  let rec first x = if x <= max
    then let _ = print_int_endline x in x |> succ |> second

  and second x = if x <= max
    then let _ = print_int_endline x in x |> succ |> first
  in first 0

let counter_eighteen = counter 10
