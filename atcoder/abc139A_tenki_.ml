(* uninhm
 * https://atcoder.jp/contests/abc139/tasks/abc139_a
 * implementation
 * *)

let rec count_eq s t i c =
    if i == String.length s then c
    else if s.[i] == t.[i] then count_eq s t (i+1) (c+1)
    else count_eq s t (i+1) c;;

Printf.printf "%d\n" @@
Scanf.scanf "%s\n%s\n" @@ fun s t ->
    count_eq s t 0 0;;

