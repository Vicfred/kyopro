(* vicfred
 * https://atcoder.jp/contests/abc142/tasks/abc142_a
 * math
 * *)
Scanf.scanf "%d" @@ fun n ->
    Printf.printf "%.9f\n" (float_of_int (n - n / 2) /. float_of_int n)

