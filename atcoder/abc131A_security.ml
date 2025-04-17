(* vicfred
 * https://atcoder.jp/contests/abc131/tasks/abc131_a
 * implementation
 * *)
let main = 
    let s = Scanf.scanf "%s\n" (fun x -> x) in
    String.iteri(fun i ss -> if (i + 1 < (String.length s) && s.[i] = s.[i + 1]) then (Printf.printf "Bad\n"; exit 0)) s;
    Printf.printf "Good\n"

