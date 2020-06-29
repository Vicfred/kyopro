(* Vicfred
 * https://atcoder.jp/contests/abc148/tasks/abc148_b
 * string manipulation
 * *)
open Printf
open Scanf

let main =
    scanf"%d %s %s" (fun n s t ->
    for i = 0 to n-1 do
        printf "%c%c" s.[i] t.[i]
    done
    );
    printf "\n"
    
