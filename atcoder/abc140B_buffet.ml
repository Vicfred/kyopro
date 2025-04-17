(* vicfred
 * https://atcoder.jp/contests/abc140/tasks/abc140_b
 * implementation
 * *)

let f () = Scanf.scanf " %d" ( + ) 0
let n = f ()
let a = Array.init n @@ fun _ -> f ()
let b = Array.init n @@ fun _ -> f ()
let c = Array.init (n - 1) @@ fun _ -> f ()
let ans = ref @@ Array.fold_left ( + ) 0 b
let main =
    for i = 0 to (n - 2) do
        if a.(i + 1) = a.(i) + 1 then ans := !ans + c.(a.(i) - 1)
    done;
    Printf.printf "%d\n" !ans

