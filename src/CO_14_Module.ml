module Print = struct
  let print_int x = (string_of_int x) |> print_endline
end

module Loop = struct
  let count_upto x =
    let rec count_aux i =
      if i <= x then let _ = Print.print_int i in count_aux (i + 1)
    in count_aux 1
end

let counter_fourteen = Loop.count_upto 10
