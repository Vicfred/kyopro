(* vicfred
 * https://atcoder.jp/contests/abc142/tasks/abc142_c
 * implementation, simulation
 * *)
Scanf.scanf "%d\n" @@ fun n ->
    let a = Array.init n (fun i -> Scanf.scanf "%d " (fun a -> i+1,a)) in
    Array.sort (fun (a,b) (x,y) -> compare b y) a;
    Array.iter (fun (x, _) -> Printf.printf "%d " x) a;
    Printf.printf "\n"

