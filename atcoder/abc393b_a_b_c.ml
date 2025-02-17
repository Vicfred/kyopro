(* Vicfred *)
(* https://atcoder.jp/contests/abc393/tasks/abc393_a *)
(* implementation *)

let count_abc_triplets s =
  let indexed = List.mapi (fun i c -> (i, c)) (String.to_seq s |> List.of_seq) in
  List.fold_left (fun acc (i, a) ->
    acc + List.fold_left (fun acc (j, b) ->
      acc + List.fold_left (fun acc (k, c) ->
        if i < j && j < k && j - i = k - j && a = 'A' && b = 'B' && c = 'C' then
          acc + 1
        else
          acc
      ) 0 indexed
    ) 0 indexed
  ) 0 indexed

let () =
  (* Read input string *)
  let s = read_line () |> String.trim in
  print_int (count_abc_triplets s);
  print_newline ()
