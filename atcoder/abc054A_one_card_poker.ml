(* unihernandez22
 * https://atcoder.jp/contests/abc054/tasks/abc054_a
 * implementation
 * *)

Printf.printf "%s\n" @@
Scanf.scanf "%d %d\n" @@ fun a b ->
    if a == b then "Draw"
    else if a == 1 then "Alice"
    else if b == 1 then "Bob"
    else if a > b then "Alice"
    else "Bob"
