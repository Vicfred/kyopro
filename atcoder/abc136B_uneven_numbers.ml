(* vicfred
 * https://atcoder.jp/contests/abc136/tasks/abc136_b
 * implementation
 * *)
Scanf.scanf "%d\n" @@ fun n ->
    Printf.printf "%d\n" @@
    Array.fold_left ( + ) 0 @@
    Array.init n @@ fun i -> if (String.length @@ string_of_int @@ i + 1) mod 2 = 1 then 1 else 0

