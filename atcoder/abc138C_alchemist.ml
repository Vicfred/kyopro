(* vicfred
 * https://atcoder.jp/contests/abc138/tasks/abc138_c
 * sorting, greedy
 * *)

let main =
    Scanf.scanf "%d\n" (fun n ->
        Array.init n (fun _ -> Scanf.scanf " %f" (fun f -> f))
        |> Array.to_list
        |> List.sort compare
        |> (fun arr -> List.fold_left (fun x y -> (x +. y) /. 2.0) (List.hd arr) arr)
        |> Printf.printf "%.9f\n"
)
