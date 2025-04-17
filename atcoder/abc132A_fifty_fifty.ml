(* vicfred
 * https://atcoder.jp/contests/abc132/tasks/abc132_a
 * implementation
 * *)
Scanf.scanf "%c%c%c%c\n" @@ fun a b c d ->
    print_endline @@
    if a = b && c = d && a != c ||
    a = c && b = d && a != b ||
    a = d && b = c && a != b then "Yes"
    else "No"

