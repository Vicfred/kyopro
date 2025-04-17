(* vicfred
 * https://atcoder.jp/contests/abc127/tasks/abc127_a
 * implementation
 * *)
Scanf.scanf "%d %d" (fun a b ->
    if a >= 13 then b else if a >= 6 then b / 2 else 0
) |> Printf.printf "%d\n"

