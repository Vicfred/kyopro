(*(* vicfred
 * https://atcoder.jp/contests/abc147/tasks/abc147_b
 * string manipulation
 * *)
let s, ans = read_line(), ref 0
let main =
    String.(iteri (fun i c -> if s.[length s - i - 1] <> c then incr ans) s);
    Printf.printf "%d\n" @@ !ans / 2

