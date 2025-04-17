(*(* vicfred
 * https://atcoder.jp/contests/abc139/tasks/abc139_c
 * implementation
 * *)
let n = Scanf.scanf "%d\n" ( + ) 0
let hs = Array.init n @@ fun _ -> Scanf.scanf " %d" ( + ) 0
let maxima = ref 0
let main =
    Array.fold_left (fun (m, p) h -> if h <= p then incr maxima else maxima := 0;
    max m !maxima, h) (0, 0) hs |> fst |> Printf.printf "%d\n"

