(* Vicfred
 * https://atcoder.jp/contests/abc131/tasks/abc131_b
 * implementation
 * *)
Scanf.scanf "%d %d\n" (fun n l ->
    let flavours = Array.init n (fun i -> l + i) in
    Array.sort (fun x y -> if x = y then 0 else if abs(x) > abs(y) then 1 else -1) flavours;
    let ans = Array.fold_left ( + ) 0 flavours in
    Printf.printf "%d\n" (ans - flavours.(0))
)

