(* uninhm
 * https://atcoder.jp/contests/abc161/tasks/abc161_b
 * implementation
 * *)

let cmp a b = 0-(a-b);;

Printf.printf "%s\n" @@
Scanf.scanf "%d %d\n" @@ fun n m ->
    let a = Array.init n @@ fun _ -> Scanf.scanf "%d " @@ fun i -> i in
    Array.sort (cmp) a;
    let sum = Array.fold_right ( + ) a 0 in
    let min = (sum+4*m-1)/(4*m) in
    let ans = ref "Yes" in
    for i = 0 to m-1 do
        if a.(i) < min then
            ans := "No";
    done;
    !ans
