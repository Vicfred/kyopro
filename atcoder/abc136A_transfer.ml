(* Vicfred
 * https://atcoder.jp/contests/abc136/tasks/abc136_a
 * implementation
 * *)
Scanf.scanf "%d %d %d\n" (fun a b c ->
    c - min c (a - b)
) |> Printf.printf "%d\n"

