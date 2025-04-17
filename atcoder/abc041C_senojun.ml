(*(* vicfred
 * https://atcoder.jp/contests/abc041/tasks/abc041_c
 * sorting
 * *)
Scanf.scanf "%d" (fun n ->
    let a = Array.init n (fun i -> Scanf.scanf " %d" (fun a -> -a, i+1)) in
    Array.sort compare a;
    Array.iter (fun (_, y) -> Printf.printf "%d\n" y) a
)

