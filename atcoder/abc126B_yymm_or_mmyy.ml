(* Vicfred
 * https://atcoder.jp/contests/abc126/tasks/abc126_b
 * implementation
 * *)
let a, b = Scanf.scanf " %2d%2d" @@ fun a b -> a, b
let f x = x = 0 || x > 12
let main = print_endline @@
match f a, f b with
true, true -> "NA" |
true, false -> "YYMM" |
false, true -> "MMYY" |
_ -> "AMBIGUOUS"

