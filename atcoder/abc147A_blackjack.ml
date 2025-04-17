(* vicfred
 * https://atcoder.jp/contests/abc147/tasks/abc147_a
 * implementation
 * *)
open Scanf;;

scanf "%d %d %d" @@ fun a b c ->
    if a+b+c >= 22 then print_string "bust\n"
    else print_string "win\n"

