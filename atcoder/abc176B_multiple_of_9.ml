(* uninhm
 * https://atcoder.jp/contests/abc176/tasks/abc176_b
 * implementation
 * *)

Printf.printf "%s\n" @@
Scanf.scanf "%s\n" @@ fun n ->
  let digits_sum = ref 0 in
  for i = 0 to String.length n - 1 do
    digits_sum := !digits_sum + (int_of_char n.[i]) - 48;
  done;
  if !digits_sum mod 9 = 0 then
    "Yes"
  else
    "No";;
