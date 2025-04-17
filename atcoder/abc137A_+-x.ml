(*(* vicfred
 * https://atcoder.jp/contests/abc137/tasks/abc137_a
 * implementation
 * *)

Scanf.scanf "%d %d" (fun a b ->
    max (a + b) @@ max (a - b) @@ a * b
) |> Printf.printf "%d\n"

