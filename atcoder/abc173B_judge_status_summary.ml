(* unihernandez22
 * https://atcoder.jp/contests/abc173/tasks/abc173_b
 * implementation
 * *)

include Printf;;

Scanf.scanf "%d\n" @@ fun n ->
    let s = Array.init n @@ fun _ -> Scanf.scanf "%s\n" @@ fun x -> x in
    let c = Array.init 4 @@ fun _ -> ref 0 in
    for i = 0 to n-1 do
        if s.(i) = "AC" then c.(0) := !(c.(0)) + 1
        else if s.(i) = "WA" then c.(1) := !(c.(1)) + 1
        else if s.(i) = "TLE" then c.(2) := !(c.(2)) + 1
        else c.(3) := !(c.(3)) + 1
    done;
    printf "AC x %d\n"  !(c.(0));
    printf "WA x %d\n"  !(c.(1));
    printf "TLE x %d\n" !(c.(2));
    printf "RE x %d\n"  !(c.(3));
