let () =
  let x = read_line () |> float_of_string in
  if x >= 38.0 then
    print_int 1
  else if x >= 37.5 then
    print_int 2
  else
    print_int 3;
  print_newline ()
