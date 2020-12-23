(* uninhm
 * https://atcoder.jp/contests/abc172/tasks/abc172_a
 * implementation
 * *)

let rec pow a b =
    if b == 0 then 1 else a * pow a (b - 1);;

Printf.printf "%d\n" @@
Scanf.scanf "%d" @@ fun a ->
    a + pow (a) (2) + pow (a) (3);

