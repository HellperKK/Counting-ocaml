module type X_int = sig val x : int end

module Make_counter (X : X_int) =
struct
  let print_int x = (string_of_int x) |> print_endline
  let count () =
    let rec count_aux i =
      if i <= X.x then let _ = print_int i in (succ i) |> count_aux
    in count_aux 1
end

module Counter = Make_counter (struct let x = 10 end)
let counter_fifteen = Counter.count ()
