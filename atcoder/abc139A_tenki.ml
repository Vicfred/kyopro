(* vicfred
 * https://atcoder.jp/contests/abc139/tasks/abc139_a
 * implementation
 * *)

Scanf.scanf "%s\n%s\n" (fun s t ->
    let ans = ref 0 in
    for i = 0 to (String.length s - 1) do
        if s.[i] = t.[i] then
            ans := !ans + 1
    done;
    Printf.printf "%d\n" !ans
)

