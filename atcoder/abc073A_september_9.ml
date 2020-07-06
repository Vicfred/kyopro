(* Vicfred
 * https://atcoder.jp/contests/abc073/tasks/abc073_a
 * implementation
 * *)
Scanf.scanf "%s\n" (fun n ->
    if n.[0] == '9' || n.[1] == '9' then "Yes"
    else "No"
) |> Printf.printf "%s\n"

