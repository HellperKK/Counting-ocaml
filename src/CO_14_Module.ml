module Print : sig
  val print_int : int -> unit
end = struct
  let print_int x = (string_of_int x) |> print_endline
end

module Loop : sig
  val count_upto : int -> unit
end = struct
  let count_upto x =
    let rec count_aux i =
      if i <= x then let _ = Print.print_int i in count_aux (i + 1)
    in count_aux 1
end

let counter_fourteen = Loop.count_upto 10
