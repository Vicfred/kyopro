(* uninhm
 * https://atcoder.jp/contests/abc171/tasks/abc171_b
 * sorting
 * *)

Printf.printf "%d\n" @@
Scanf.scanf "%d %d\n" @@ fun n k ->
    let a = Array.init n @@ fun _ -> Scanf.scanf "%d " @@ fun i -> i in
    Array.sort (-) a;
    let ans = ref 0 in
    for i = 0 to k-1 do
        ans := !ans + a.(i)
    done;
    !ans;;
