(* unihernandez22
 * https://atcoder.jp/contests/abc173/tasks/abc173_a
 * basic math
 * *)

Printf.printf "%d\n" @@
Scanf.scanf "%d\n" @@ fun n ->
    if n mod 1000 = 0 then 0
    else 1000 - n mod 1000
