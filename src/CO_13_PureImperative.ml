let print_int_endline x = (string_of_int x) |> print_endline

let value = ref 1
let _ =
  print_int_endline value.contents;
  incr value;
  print_int_endline value.contents;
  incr value;
  print_int_endline value.contents;
  incr value;
  print_int_endline value.contents;
  incr value;
  print_int_endline value.contents;
  incr value;
  print_int_endline value.contents;
  incr value;
  print_int_endline value.contents;
  incr value;
  print_int_endline value.contents;
  incr value;
  print_int_endline value.contents;
  incr value;
  print_int_endline value.contents;
