(* vicfred
 * https://atcoder.jp/contests/abc077/tasks/abc077_a
 * implementation
 * *)
Scanf.scanf "%s\n%s\n" ( fun a b ->
    if a.[0] = b.[2] && a.[1] = b.[1] && a.[2] = b.[0] then "YES"
    else "NO"
) |> Printf.printf "%s\n"

