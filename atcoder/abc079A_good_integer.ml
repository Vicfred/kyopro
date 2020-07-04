(* Vicfred
 * https://atcoder.jp/contests/abc079/tasks/abc079_a
 * implementation
 * *)
Scanf.scanf "%s\n" (fun s ->
    if s.[1] = s.[2] && (s.[0] = s.[1] || s.[2] = s.[3]) then "Yes" else "No"
) |> print_endline

