(* Vicfred
 * https://atcoder.jp/contests/abc134/tasks/abc134_b
 * math
 * *)
Scanf.scanf "%d %d\n" @@ fun n d ->
    Printf.printf "%d\n" @@
    (n + 2 * d)/ (2 * d + 1)

