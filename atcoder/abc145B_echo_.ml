(* Vicfred
 * https://atcoder.jp/contests/abc145/tasks/abc145_b
 * string manipulation
 * *)
let main =
    Scanf.scanf "%d\n%s" @@ fun n s ->
        print_endline @@
        if Array.fold_left (&&) (n mod 2 = 0) @@
        Array.init (n/2) @@ fun i -> s.[i] = s.[i+n/2]
        then "Yes"
        else "No"

