(* Vicfred
 * https://open.kattis.com/problems/geppetto
 * brute force, bitmask
 * *)
open Scanf
open Printf

let main = scanf "%d %d\n" @@ fun n m ->
    for mask = 0 to 1 lsl n - 1 do
        let sum = Array.init n (fun _ -> scanf " %d %d" (fun a b -> a, b))
        |> Array.fold_left (fun a, b -> if mask land 1 lsl a <> 0 && mask land 1 lsl b <> 0 then true else false) in
        if sum then printf "1" else printf "9"
    done
