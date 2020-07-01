(* unihernandez22
 * https://atcoder.jp/contests/abc171/tasks/abc171_a
 * implementation
 * *)

let is_uppercase = function
    'A' .. 'Z' -> true
    | _ -> false;;

Printf.printf "%c\n" @@
Scanf.scanf "%c" @@ fun a ->
    if is_uppercase a then 'A'
    else 'a';;
