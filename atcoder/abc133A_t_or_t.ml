(* vicfred
 * https://atcoder.jp/contests/abc133/tasks/abc133_a
 * implementation
 * *)
Scanf.scanf "%d %d %d\n" @@ fun n a b ->
    Printf.printf "%d\n" @@ min (n * a) b

