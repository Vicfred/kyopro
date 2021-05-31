(* uninhm
 * https://atcoder.jp/contests/abc172/tasks/abc172_b
 * implementation
 * *)

let rec count_diff s t i c =
    if i == String.length s then c
    else if s.[i] != t.[i] then count_diff (s) (t) (i+1) (c+1)
    else count_diff (s) (t) (i+1) (c);;

Printf.printf "%d\n" @@
Scanf.scanf "%s\n%s\n" @@ fun s t ->
    count_diff s t 0 0;;
    
