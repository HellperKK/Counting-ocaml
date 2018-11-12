let print_int_endline x = (string_of_int x) |> print_endline

let value = ref 0

let print_incr x =
  incr x;
  print_int_endline x.contents

let counter_thirteen =
  print_incr value;
  print_incr value;
  print_incr value;
  print_incr value;
  print_incr value;
  print_incr value;
  print_incr value;
  print_incr value;
  print_incr value;
  print_incr value;
