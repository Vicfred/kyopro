(* unihernandez22
 * https://atcoder.jp/contests/abc131/tasks/abc131_b
 * implementation
 * *)

Printf.printf "%d\n" @@
Scanf.scanf "%d %d\n" @@ fun n l ->
    let total =
        Array.init n (fun i -> i + l)
        |> Array.fold_left ( + ) 0
    in
    Array.init n (fun i -> i + l)
    |> Array.fold_left (fun x eat -> if abs x < abs eat then x else eat) 300
    |> ( - ) total;;

