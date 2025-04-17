(* vicfred
 * https://atcoder.jp/contests/abc144/tasks/abc144_b
 * implementation
 * *)

let main =
    Scanf.scanf "%d" @@ fun n ->
      print_endline @@ if
        Array.fold_left (Array.fold_left ( || )) false @@
        Array.init 9 @@ fun i ->
          Array.init 9 @@ fun j -> n = (i+1)*(j+1)
    then "Yes"
    else "No"

