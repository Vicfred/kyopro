let even s =
    let n = String.length s in
    if n mod 2 != 0 then false
    else
        let first  = String.sub s 0 (n / 2) in
        let second = String.sub s (n / 2) (n / 2) in
        if first = second then true
        else false;;

let rec solution s =
    let n = String.length s in
    if even s then n
    else solution @@ String.sub s 0 (n - 1);;

Printf.printf "%d\n" @@
Scanf.scanf "%s\n" @@ fun s ->
    solution @@ String.sub s 0 @@ String.length s - 1;;

