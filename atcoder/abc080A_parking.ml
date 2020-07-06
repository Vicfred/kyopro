(* Vicfred
 * https://atcoder.jp/contests/abc080/tasks/abc080_a
 * implementation
 * *)
Scanf.scanf "%d %d %d\n" (fun n a b ->
    min (n * a) b
) |> Printf.printf "%d\n"

