(*(* vicfred
 * https://atcoder.jp/contests/abc138/tasks/abc138_a
 * implementation
 * *)
Scanf.scanf "%d\n%s\n" (fun a s ->
    if a >= 3200 then s
    else "red"
) |> Printf.printf "%s\n"

