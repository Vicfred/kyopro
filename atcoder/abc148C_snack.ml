(* vicfred
 * https://atcoder.jp/contests/abc148/tasks/abc148_c
 * math
 * *)
open Printf
open Scanf

let rec gcd a b =
    if b == 0 then a
    else gcd b (a mod b)

let lcm a b = (a / gcd a b) * b

let main = scanf "%d %d" lcm |> printf "%d\n"

