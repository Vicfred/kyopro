(* vicfred
 * https://atcoder.jp/contests/abc078/tasks/abc078_a
 * implementation
 * *)
Scanf.scanf "%c %c\n" @@ fun x y -> print_endline @@ if x = y then "=" else if x < y then "<" else ">"

