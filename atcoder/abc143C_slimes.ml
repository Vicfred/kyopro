(* Vicfred
 * https://atcoder.jp/contests/abc143/tasks/abc143_c
 * implementation
 * *)
let main =
    Scanf.scanf "%d\n%s" @@ fun n s ->
        Printf.printf "%d\n" @@
        Array.fold_left ( + ) 1 @@
        Array.init (n - 1) @@ fun i ->
            if s.[i] = s.[i + 1] then 0 else 1

