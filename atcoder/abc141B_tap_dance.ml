(* Vicfred
 * https://atcoder.jp/contests/abc141/tasks/abc141_b
 * implementation
 * *)
Scanf.scanf "%s\n" (fun s ->
    if
      Array.fold_left ( && ) true @@
      Array.init (String.length s) @@ fun i ->
        if i mod 2 = 0 && s.[i] = 'L' then false
        else if i mod 2 = 1 && s.[i] = 'R' then false
        else true
    then "Yes"
    else "No"
) |> Printf.printf "%s\n"

