(* vicfred
 * https://atcoder.jp/contests/abc135/tasks/abc135_a
 * math
 * *)
Scanf.scanf "%d %d\n" (fun a b ->
    if (a + b) mod 2 != 0 then "IMPOSSIBLE"
    else string_of_int @@ (a + b) / 2
) |> Printf.printf "%s\n"

