(* vicfred & uninhm
 * https://atcoder.jp/contests/abc144/tasks/abc144_c
 * math
 * *)

Scanf.scanf "%d" (fun n ->
    let d = ref 1 in
    for i = 1 to (int_of_float @@ sqrt @@ float_of_int @@ n) do
        if n mod i == 0 then d := i
    done;
    Printf.printf "%d\n" ( !d - 1 + n / !d - 1 )
)
