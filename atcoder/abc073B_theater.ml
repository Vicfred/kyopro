(* Vicfred
 * https://atcoder.jp/contests/abc073/tasks/abc073_b
 * implementation
 * *)
let n = Scanf.scanf "%d\n" ( + ) 0
let lines = Array.init n @@ fun _ -> Scanf.scanf "%d %d\n" @@ fun l r -> r - l + 1
let main = Array.fold_left ( + ) 0 lines |> Printf.printf "%d\n"

