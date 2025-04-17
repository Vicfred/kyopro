(*(* vicfred
 * https://atcoder.jp/contests/abc147/tasks/abc147_b
 * string manipulation
 * *)
open Scanf

let main =
    let s = read_line() in
    Printf.printf "%d\n" @@
    Array.fold_left (+) 0 @@
    Array.init (String.length s/2) @@ fun i ->
        if s.[i] = s.[String.length s - i - 1] then 0 else 1

