(* vicfred
 * https://atcoder.jp/contests/abc170/tasks/abc170_b
 * brute force *)
let solve x y =
    let a, b = 4*x - y, y - 2*x in
    if a mod 2 = 0 && b mod 2 = 0 && a >= 0 && b >= 0 then "Yes" else "No"

let main =
    Scanf.scanf "%d %d" solve |> Printf.printf "%s\n"

