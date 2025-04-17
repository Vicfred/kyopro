(*(* vicfred
 * https://atcoder.jp/contests/abc149/tasks/abc149_b
 * implementation
 * *)
Scanf.scanf "%d %d %d\n" (fun a b k ->
    if k <= a then (a - k, b)
    else if k <= a+b then (0, b - k + a)
    else (0, 0)
) |> fun (x, y) -> Printf.printf "%d %d\n" x y

