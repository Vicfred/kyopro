(* uninhm
 * https://atcoder.jp/contests/abc162/tasks/abc162_b
 * implementation
 * *)

Printf.printf "%d\n" @@
Scanf.scanf "%d\n" @@ fun n ->
    let ans = ref 0 in
    for i = 1 to n do
        if (i mod 3 != 0) && (i mod 5 != 0) then
            ans := !ans + i;
    done;
    !ans
