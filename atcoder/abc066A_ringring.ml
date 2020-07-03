(* unihernandez22
 * https://atcoder.jp/contests/abc066/tasks/abc066_a
 * sorting, implementation
 * *)

Printf.printf "%d\n" @@
Scanf.scanf "%d %d %d\n" @@ fun a b c ->
    [a; b; c]
    |> List.sort compare
    |> fun l -> List.nth l 0 + List.nth l 1
