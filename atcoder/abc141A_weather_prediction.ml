(*(* vicfred
 * https://atcoder.jp/contests/abc141/tasks/abc141_a
 * implementation
 * *)
Scanf.scanf "%s\n" (fun s ->
    if s = "Sunny" then "Cloudy"
    else if s = "Cloudy" then "Rainy"
    else "Sunny"
) |> Printf.printf "%s\n"

