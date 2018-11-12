module type X_int = sig val x : int end
module Make_counter (X : X_int) =
struct
  let x = X.x
  let print_int x = (string_of_int x) |> print_endline
  let count () =
    let rec count_aux i =
      if i <= x then let _ = print_int i in count_aux (i + 1)
    in count_aux 1
end

module Counter = Make_counter (struct let x = 10 end)
let counter_fifteen = Counter.count ()
