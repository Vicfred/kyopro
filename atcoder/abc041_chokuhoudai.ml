(*(* vicfred
 * https://atcoder.jp/contests/abc041/tasks/abc041_b
 * math, implementation
 * *)
let ( * ) a b = (a * b) mod 1000000007

let () = Scanf.scanf "%d %d %d" (fun a b c ->
    Printf.printf "%d\n" (a*b*c))

