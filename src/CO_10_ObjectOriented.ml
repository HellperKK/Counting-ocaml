let compteur maxi =
  object(self)
  method say x = if x <= maxi
    then let _ = print_endline (string_of_int x) in self#say (x+1)
  method count = self#say 1
end

let counter_ten = compteur 10;;
counter_ten#count
