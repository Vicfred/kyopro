(* Vicfred
 * https://atcoder.jp/contests/abc130/tasks/abc130_b
 * implementation
 * *)
Scanf.scanf "%d %d\n" @@ fun n x ->
    Array.init n (fun _ -> Scanf.scanf " %d" ( + ) 0)
    |> Array.fold_left (fun (a, b) c -> (if b + c <= x then a + 1 else a), b + c) (1, 0)
    |> fst
    |> Printf.printf "%d\n"

