(* Vicfred
 * https://atcoder.jp/contests/abc146/tasks/abc146_b
 * string manipulation
 * *)
let n = read_int()
let _ = String.map (fun c -> 
    Char.(chr @@ (code c - code 'A' + n) mod 26 + code 'A')) @@
    read_line() |> print_endline

