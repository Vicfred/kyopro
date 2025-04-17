(* vicfred
 * https://atcoder.jp/contests/abc136/tasks/abc136_c
 * greedy
 * *)
let n = Scanf.scanf "%d\n" ( + ) 0
let h = Array.init n @@ fun _ -> Scanf.scanf " %d" ( + ) 0
let maxima = ref @@ h.(0) - 1
let main =
    for i = 1 to n - 1 do
        if !maxima > h.(i) then ( print_endline "No"; exit 0);
        maxima := h.(i) - if !maxima < h.(i) then 1 else 0
    done;
    print_endline "Yes"

