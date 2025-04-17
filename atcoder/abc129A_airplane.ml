(*(* vicfred
 * https://atcoder.jp/contests/abc129/tasks/abc129_a
 * implementation
 * *)
Scanf.scanf "%d %d %d" (fun p q r ->
    p + q + r - max p (max q r)
) |> Printf.printf "%d\n"

