(* vicfred
 * https://atcoder.jp/contests/abc144/tasks/abc144_c
 * math
 * *)
let divisors n =
    let rec f i =
        if i*i > n then []
        else if n mod i = 0 then i :: f(i+1)
        else f(i+1)
    in
    f 1
;;

let min_list a = List.fold_left min max_int a ;;

let main =
    let n = Scanf.scanf "%d" (fun x -> x) in
    let ans = divisors n |> List.map (fun x -> x + n / x - 2) |> min_list in
    Printf.printf "%d\n" ans
;;

