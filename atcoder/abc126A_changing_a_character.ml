(* vicfred
 * https://atcoder.jp/contests/abc126/tasks/abc126_a
 * implementation
 * *)
let n, k, s = Scanf.scanf " %d %d\n%s" @@ fun a b c -> a, b - 1 , c
let main = print_endline @@ String.mapi (fun i c -> if i = k then Char.lowercase_ascii c else c) s

