(*(* vicfred
 * https://atcoder.jp/contests/abc170/tasks/abc170_a
 * implementation
 * *)
open Printf
open Scanf

let solve a b c d e = 15 - a - b - c - d - e

let main =
    scanf "%d %d %d %d %d" solve |> printf "%d\n"

