(*(* vicfred
 * https://atcoder.jp/contests/abc080/tasks/abc080_b
 * implementation
 * *)
let n = read_int ()
let rec f n = if n = 0 then 0 else n mod 10 + f (n / 10)
let main = print_endline @@ if n mod f n = 0 then "Yes" else "No"

