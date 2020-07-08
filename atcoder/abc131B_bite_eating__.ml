(* unihernandez22
 * https://atcoder.jp/contests/abc131/tasks/abc131_b
 * implementation
 * *)

Printf.printf "%d\n" @@
Scanf.scanf "%d %d\n" @@ fun n l ->
    let flavors = Array.init n (fun i -> i + l) in
    let total = Array.fold_left ( + ) 0 flavors in
    Array.fold_left (fun x eat -> if abs x < abs eat then x else eat) 300 flavors
    |> ( - ) total;;

