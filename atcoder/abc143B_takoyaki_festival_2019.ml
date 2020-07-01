(* Vicfred
 * https://atcoder.jp/contests/abc143/tasks/abc143_b
 * brute force
 * *)
Scanf.scanf "%d\n" @@ fun n ->
    let d = Array.init n @@ fun _ -> Scanf.scanf "%d " @@ fun d -> d in
    Printf.printf "%d\n" @@
    Array.fold_left (Array.fold_left ( + )) 0 @@
    Array.init n @@ fun i ->
        Array.init n @@ fun j ->
            if i <= j then 0
            else d.(i) * d.(j)

