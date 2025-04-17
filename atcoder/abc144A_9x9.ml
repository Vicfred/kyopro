(* vicfred
 * https://atcoder.jp/contests/abc144/tasks/abc144_a
 * implementation
 * *)
Scanf.scanf "%d %d" (fun a b ->
    if a <= 9 && b <= 9 then a*b
    else -1
) |> Printf.printf "%d\n"

