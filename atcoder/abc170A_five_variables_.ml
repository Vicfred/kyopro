(*(* vicfred
 * https://atcoder.jp/contests/abc170/tasks/abc170_a
 * implementation
 * *)
open Printf
open Scanf

let main =
    let xs = Array.init 5 @@ fun _ -> scanf"%d " @@ fun x -> x in
    for i = 0 to 4 do
        if xs.(i) = 0 then
            printf "%d\n" @@ i + 1
    done

