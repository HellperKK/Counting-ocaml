module type Countable = sig
  type t
  val succ: t -> t
  val compare: t -> t -> int
  val print: t -> unit
end

module Make_counter (M : Countable) =
struct
  let count_upto min max =
    let rec aux i = if (M.compare i max) == -1
      then let _ = M.print i in aux (M.succ i)
end

module Counter = Make_counter (struct
  type t = int
  let succ = succ
  let compare = Int.compare
  let print = fun i -> x |> string_of_int |> print_endline
end)

let counter_nineteen = Counter.count_upto 1 10
