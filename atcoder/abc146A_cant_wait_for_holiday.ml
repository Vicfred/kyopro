(*(* vicfred
 * https://atcoder.jp/contests/abc146/tasks/abc146_a
 * implementation
 * *)
Printf.printf "%d\n" @@ match read_line () with
| "SUN" -> 7
| "MON" -> 6
| "TUE" -> 5
| "WED" -> 4
| "THU" -> 3
| "FRI" -> 2
| "SAT" -> 1
| _ -> -1

