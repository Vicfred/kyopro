(*(* vicfred
 * https://atcoder.jp/contests/abc143/tasks/abc143_a
 * implementation
 * *)
Scanf.scanf "%d %d" (fun a b ->
    if 2*b >= a then 0
    else a - 2 * b
) |> Printf.printf "%d\n"

