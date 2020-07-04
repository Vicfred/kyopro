(* Vicfred
 * https://atcoder.jp/contests/abc079/tasks/abc079_b
 * math
 * *)
let n = read_int()
let rec lucas i a b = if i >= n then a else lucas (i + 1) b (a + b)
let main = lucas 0 2 1 |> Printf.printf "%d\n"

