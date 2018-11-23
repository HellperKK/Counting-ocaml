class counter =
  object (self)
    val mutable x = 1
    method increment = x <- x + 1
    method print = (string_of_int x) |> print_endline
    method count_utpo maxi = while x <= maxi do
      self#print;
      self#increment;
    done
  end

let counter_sixteen = new counter;;
counter_sixteen#count_utpo 10
