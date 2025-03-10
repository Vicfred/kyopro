let create_grid n =
  let grid = Array.make_matrix (n + 1) (n + 1) '#' in
  for i = 1 to n do
    let j = n + 1 - i in
    if i <= j then
      for k = i to j do
        for l = i to j do
          grid.(k).(l) <- if i mod 2 = 1 then '#' else '.'
        done
      done
  done;
  for i = 1 to n do
    print_endline (String.sub (Array.fold_left (^) "" (Array.map (String.make 1) grid.(i))) 1 n)
  done

let () =
  let n = read_int () in
  create_grid n
