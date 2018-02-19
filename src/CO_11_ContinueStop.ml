type 'a state = Continue of 'a | Stop

let count_CS max =
  let rec count = function
    |Stop -> ()
    |Continue x -> let _ = print_endline (string_of_int x) in count (if x >= max then Stop else Continue (x + 1))
  in count (Continue 1)

let counter_eleven = count_CS 10
