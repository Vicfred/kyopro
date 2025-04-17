(* vicfred
 * https://atcoder.jp/contests/abc133/tasks/abc133_b
 * math, implementation
 * *)
let ans, n, xss = Scanf.(scanf "%d %d" @@ fun n d -> ref 0, n, Array.(init n @@ fun _ -> init d @@ fun _ -> scanf " %d" ( + ) 0))
let rec f i n = if i * i >= n then i * i  = n else f (i + 1) n
let g n = n * n
let main = Array.(iteri (fun i xs -> for j = i +  1 to n - 1 do if f 1 @@ fold_left ( + ) 0 @@ mapi (fun k x -> g (x - xss.(j).(k))) xs then incr ans done) xss); Printf.printf "%d\n" !ans

