(*(* vicfred
 * https://atcoder.jp/contests/abc145/tasks/abc145_b
 * string manipulation
 * *)
let n = read_int()
let s = read_line()
let main =
    print_endline @@
    if String.(sub s 0 @@ n/2 = sub s (n/2) @@ (n+1)/2) then "Yes"
    else "No"

