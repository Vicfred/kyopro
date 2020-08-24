(*
 * Vicfred
 * https://atcoder.jp/contests/abc176/tasks/abc176_a
 * implementation
 * *)
Scanf.scanf "%d %d %d" (fun n x t ->
    Printf.printf "%d\n" (((n + x - 1)/ x) * t))

