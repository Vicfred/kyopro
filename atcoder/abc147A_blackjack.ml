(* Vicfred
 * https://atcoder.jp/contests/abc147/tasks/abc147_a
 * implementation
 * *)
open Printf
open Scanf

let main = scanf "%d %d %d" @@ fun a b c ->
    if a+b+c >= 22 then
        printf "bust\n"
    else
        printf "win\n"

