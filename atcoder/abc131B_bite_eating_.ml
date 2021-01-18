(* uninhm
 * https://atcoder.jp/contests/abc131/tasks/abc131_b
 * implementation
 * *)

let rec solution n l i cum eat =
    if i > n then cum-eat
    else
        let curr = i+l-1 in
        if abs curr < abs eat then
            solution n l (i+1) (cum+curr) curr
        else
            solution n l (i+1) (cum+curr) eat;;

Printf.printf "%d\n" @@
Scanf.scanf "%d %d\n" @@ fun n l ->
    solution n l 1 0 300;;

