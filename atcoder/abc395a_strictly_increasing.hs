let rec strictly_increasing = function
  | [] | [_] -> true
  | x :: y :: rest -> x < y && strictly_increasing (y :: rest)

let () =
  let n = read_int () in
  let a = List.init n (fun _ -> read_int ()) in
  print_endline (if strictly_increasing a then "Yes" else "No")
