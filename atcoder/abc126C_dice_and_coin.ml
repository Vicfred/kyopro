(* uninhm
 * https://atcoder.jp/contests/abc126/tasks/abc126_c
 * math
 * *)

let log2 n = log n /. log 2.;;

Printf.printf "%.15f\n" @@
Scanf.scanf "%f %f\n" @@ fun n k ->
    let ans = ref 0.0 in
    for dice = 1 to int_of_float n do
        let steps = ceil @@ log2 (k /. (float_of_int dice)) in
        let prob = ref (1.0 /. n) in
        if float_of_int dice < k then
            prob := !prob *. (Float.pow (1.0 /. 2.0) steps);
        ans := !ans +. !prob;
    done;
    !ans;;
