(* Vicfred
 * https://atcoder.jp/contests/abc132/tasks/abc132_b
 * implementation
 * *)
let main = Scanf.scanf "%d\n" @@ fun n ->
    let p = Array.init n @@ fun _ -> Scanf.scanf " %d" ( + ) 0 in
    Array.init (n - 2) (fun i -> p.(i), p.(i + 1), p.(i + 2))
    |> Array.fold_left (fun v (x, y, z) -> if (x < y && y < z) || (x > y && y > z) then v + 1 else v) 0
    |> Printf.printf "%d\n"

