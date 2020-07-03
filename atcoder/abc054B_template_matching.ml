(* unihernandez22
 * https://atcoder.jp/contests/abc054/tasks/abc054_b
 * implementation
 * *)

Scanf.scanf "%d %d\n" @@ fun n m ->
    let a = Array.init n @@ fun _ -> Scanf.scanf "%s\n" @@ fun s -> s in
    let b = Array.init m @@ fun _ -> Scanf.scanf "%s\n" @@ fun s -> s in

    let valid = ref true in
    let ans = ref "No\n" in
    for i = 0 to n-m do
        for j = 0 to n-m do
            valid := true;
            for y = 0 to m-1 do
                if not (String.sub a.(i+y) j m = b.(y)) then
                    valid := false;
            done;
            if !valid then
                ans := "Yes\n";
        done;
    done;
    print_string !ans;;

